using UnityEngine;

[CreateAssetMenu(menuName = "Combat/Behaviors/Sample Targeted Burst")]
public class SampleTargetedBurstBehavior : AttackBehavior
{
    [Header("Burst Settings")]
    public int bulletsPerBurst = 3;
    public float fireInterval = 0.5f;
    public float duration = 5f;

    [Header("Bullet Settings")]
    public float bulletSpeed = 10f;
    public float bulletDamage = 12f;
    public float bulletLifetime = 5f;
    public float collisionRadius = 0.1f;
    public bool canBeParried = true;
    public bool destroyOnParry = true;
    public GameObject bulletPrefab;

    private Transform player;
    private Transform origin;
    private float timer;
    private float fireTimer;

    public override void Spawn(AttackData data, Transform origin)
    {
        this.origin = origin;
        player = GameObject.FindWithTag("Player")?.transform;

        timer = 0f;
        fireTimer = 0f;
        IsFinished = false;
    }

    public override void UpdateBehavior(AttackData data, float dt)
    {
        if (IsFinished || player == null) return;

        timer += dt;
        fireTimer += dt;

        if (fireTimer >= fireInterval)
        {
            fireTimer = 0f;
            FireBurst();
        }

        if (timer >= duration)
            IsFinished = true;
    }

    public override void End(AttackData data) { }

    private void FireBurst()
    {
        Vector3 direction = (player.position - origin.position).normalized;
        float spread = 10f;

        for (int i = 0; i < bulletsPerBurst; i++)
        {
            float angleOffset = Mathf.Lerp(-spread, spread, bulletsPerBurst == 1 ? 0.5f : i / (float)(bulletsPerBurst - 1));
            Vector3 dir = Quaternion.Euler(0, angleOffset, 0) * direction;

            Bullet b = new Bullet
            {
                position = origin.position,
                direction = dir.normalized,
                speed = bulletSpeed,
                damage = bulletDamage,
                maxLifetime = bulletLifetime,
                collisionRadius = collisionRadius,
                canBeParried = canBeParried,
                destroyOnParry = destroyOnParry,
                movementType = BulletMovementType.Straight,
                attackData = null, // optional if no reference needed
                visual = bulletPrefab
            };

            BulletManager.Instance.SpawnBullet(b);
        }
    }
}