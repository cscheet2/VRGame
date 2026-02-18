using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class Sword : MonoBehaviour
{
    [Header("Blade Points")]
    public Transform bladeBase;
    public Transform bladeTip;

    [Header("Detection")]
    public float sphereRadius = 0.025f;
    public LayerMask meleeParryLayer;   // Only melee objects
    public float hitCooldown = 0.2f;

    [Header("Swing")]
    public float swingStartThreshold = 1.5f;
    public float swingStopThreshold = 0.4f;
    public float perfectWindow = 0.15f;

    [Header("Hit Stop")]
    public float hitStopDuration = 0.05f;
    public float hitStopScale = 0.85f;

    public Vector3 Velocity { get; private set; }

    Vector3 lastSwordPos;
    Vector3 lastBasePos;
    Vector3 lastTipPos;

    float swingStartTime;
    bool isSwinging;

    Dictionary<Rigidbody, float> cooldowns = new Dictionary<Rigidbody, float>();

    void Start()
    {
        lastSwordPos = transform.position;
        lastBasePos = bladeBase.position;
        lastTipPos = bladeTip.position;
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
        SweepBladeBullets();

        lastBasePos = bladeBase.position;
        lastTipPos = bladeTip.position;

        BulletManager.Instance.TryParryBullets(
            lastBasePos,
            lastTipPos,
            bladeBase.position,
            bladeTip.position,
            sphereRadius,
            Velocity,
            Time.time - swingStartTime <= perfectWindow
        );
    }

    // -------------------------
    // MELEE (Physics-Based)
    // -------------------------
    void SweepBladeMelee()
    {
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

                // Simple example: reflect rigidbody
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

    // -------------------------
    // BULLETS (Struct-Based)
    // -------------------------
    void SweepBladeBullets()
    {
        if (!isSwinging) return;

        bool isPerfect = Time.time - swingStartTime <= perfectWindow;

        BulletManager.Instance.TryParryBullets(
            lastBasePos,
            lastTipPos,
            bladeBase.position,
            bladeTip.position,
            sphereRadius,
            Velocity,
            isPerfect
        );
    }

    // -------------------------
    // HIT STOP
    // -------------------------
    IEnumerator HitStop()
    {
        float original = Time.timeScale;
        Time.timeScale = hitStopScale;

        yield return new WaitForSecondsRealtime(hitStopDuration);

        Time.timeScale = original;
    }
}
