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
    public LayerMask parryLayer;
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
        SweepBlade();
        lastBasePos = bladeBase.position;
        lastTipPos = bladeTip.position;
    }

    void SweepBlade()
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
                parryLayer,
                QueryTriggerInteraction.Ignore
            );

            foreach (var hit in hits)
            {
                Rigidbody rb = hit.rigidbody;
                if (rb == null) continue;

                if (!CanHit(rb)) continue;
                cooldowns[rb] = Time.time;

                IParryableAttack attack = rb.GetComponent<IParryableAttack>();
                if (attack == null) continue;
                if (!attack.CanBeParried()) continue;

                ParryContext context = new ParryContext
                {
                    isPerfect = Time.time - swingStartTime <= perfectWindow,
                    swordVelocity = Velocity,
                    hitNormal = hit.normal
                };

                attack.OnParried(context);

                StartCoroutine(HitStop());
            }
        }
    }

    bool CanHit(Rigidbody rb)
    {
        if (cooldowns.ContainsKey(rb))
        {
            if (Time.time - cooldowns[rb] < hitCooldown)
                return false;
        }
        return true;
    }

    IEnumerator HitStop()
    {
        float original = Time.timeScale;
        Time.timeScale = hitStopScale;
        yield return new WaitForSecondsRealtime(hitStopDuration);
        Time.timeScale = original;
    }
}
