using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Sword : MonoBehaviour
{
    [Header("Blade Points (Used For Melee Only)")]
    public Transform bladeBase;
    public Transform bladeTip;

    [Header("Melee Detection")]
    public float sphereRadius = 0.025f;
    public LayerMask meleeParryLayer;
    public float hitCooldown = 0.2f;

    [Header("Swing")]
    public float swingStartThreshold = 1.5f;
    public float swingStopThreshold = 0.4f;
    public float perfectWindow = 0.15f;

    [Header("Bullet Parry")]
    public float parryAngle = 70f;
    public float speedMultiplier = 1.5f;

    [Header("Hit Stop")]
    public float hitStopDuration = 0.05f;
    public float hitStopScale = 0.85f;

    public Vector3 Velocity { get; private set; }

    private Vector3 lastSwordPos;
    private Vector3 lastBasePos;
    private Vector3 lastTipPos;

    private float swingStartTime;
    private bool isSwinging;

    private Renderer swordRenderer;
    private Vector3 halfExtents;
    private float boundingSphereRadius;

    private Dictionary<Rigidbody, float> cooldowns = new Dictionary<Rigidbody, float>();

    void Awake()
    {
        // Try to find any MeshRenderer in children (recursive)
        swordRenderer = GetComponentInChildren<Renderer>(true);

        if (swordRenderer == null)
        {
            Debug.LogError($"[Sword] No MeshRenderer found in children of {gameObject.name}!");
        }
    }

    void Start()
    {
        lastSwordPos = transform.position;

        if (bladeBase != null) lastBasePos = bladeBase.position;
        if (bladeTip != null) lastTipPos = bladeTip.position;

        if (swordRenderer != null)
        {
            Bounds b = swordRenderer.bounds;
            halfExtents = b.extents;
            boundingSphereRadius = halfExtents.magnitude;
        }
    }

    void Update()
    {
        Velocity = (transform.position - lastSwordPos) / Time.deltaTime;
        lastSwordPos = transform.position;

        float speed = Velocity.magnitude;

        if (!isSwinging && speed > swingStartThreshold)
        {
            isSwinging = true;
            swingStartTime = Time.time;
        }

        if (speed < swingStopThreshold)
            isSwinging = false;
    }

    void FixedUpdate()
    {
        SweepBladeMelee();

        if (isSwinging)
            ParryBullets();

        if (bladeBase != null) lastBasePos = bladeBase.position;
        if (bladeTip != null) lastTipPos = bladeTip.position;
    }

    // =========================================================
    // MELEE (Physics-Based)
    // =========================================================

    void SweepBladeMelee()
    {
        if (bladeBase == null || bladeTip == null) return;

        for (int i = 0; i <= 4; i++)
        {
            float t = i / 4f;

            Vector3 current = Vector3.Lerp(bladeBase.position, bladeTip.position, t);
            Vector3 previous = Vector3.Lerp(lastBasePos, lastTipPos, t);

            Vector3 movement = current - previous;
            float distance = movement.magnitude;
            if (distance <= 0f) continue;

            RaycastHit[] hits = Physics.SphereCastAll(
                previous,
                sphereRadius,
                movement.normalized,
                distance,
                meleeParryLayer,
                QueryTriggerInteraction.Ignore
            );

            foreach (var hit in hits)
            {
                Rigidbody rb = hit.rigidbody;
                if (rb == null) continue;
                if (!CanHit(rb)) continue;

                cooldowns[rb] = Time.time;

                Vector3 reflectDir = Vector3.Reflect(rb.velocity, hit.normal);
                rb.velocity = reflectDir;

                StartCoroutine(HitStop());
            }
        }
    }

    bool CanHit(Rigidbody rb)
    {
        if (cooldowns.TryGetValue(rb, out float lastHitTime))
        {
            if (Time.time - lastHitTime < hitCooldown)
                return false;
        }
        return true;
    }

    // =========================================================
    // BULLETS (Optimized Spatial Grid + OBB)
    // =========================================================

    void ParryBullets()
    {
        if (BulletManager.Instance == null) return;
        if (swordRenderer == null) return;
        if (Velocity.sqrMagnitude < 0.0001f) return;

        bool isPerfect = Time.time - swingStartTime <= perfectWindow;

        Vector3 swordCenter = swordRenderer.bounds.center;

        BulletManager.Instance.TryParryBullets(
            swordCenter,
            transform,
            halfExtents,
            boundingSphereRadius,
            Velocity,
            isPerfect ? parryAngle : parryAngle * 0.7f,
            speedMultiplier
        );
    }

    // =========================================================
    // HIT STOP
    // =========================================================

    IEnumerator HitStop()
    {
        float original = Time.timeScale;
        Time.timeScale = hitStopScale;

        yield return new WaitForSecondsRealtime(hitStopDuration);

        Time.timeScale = original;
    }
}