using UnityEngine;

public class MeleeHitbox : MonoBehaviour
{
    public float damage = 20f;
    public bool canBeParried = true;
    public float parryAngle = 45f;

    public Transform shield;

    private void OnTriggerEnter(Collider other)
    {
        if (!other.CompareTag("Player"))
            return;

        Vector3 toHitbox = (transform.position - shield.position).normalized;
        float angle = Vector3.Angle(shield.forward, toHitbox);

        if (canBeParried && angle <= parryAngle)
            return;

        PlayerHealth.Instance.TakeDamage(damage);
    }
}
