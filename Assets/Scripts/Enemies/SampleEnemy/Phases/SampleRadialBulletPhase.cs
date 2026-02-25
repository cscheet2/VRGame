using UnityEngine;

[CreateAssetMenu(menuName = "Combat/Behaviors/Sample Radial Burst")]
public class SampleRadialBulletBehavior : AttackBehavior
{
    [Header("Radial Settings")]
    public int bulletCount = 8;
    public float fireInterval = 1f;
    public float duration = 5f;

    [Header("Bullet Settings")]
    public float bulletSpeed = 8f;
    public float bulletDamage = 10f;
    public float bulletLifetime = 6f;
    public float collisionRadius = 0.1f;
    public bool canBeParried = true;
    public bool destroyOnParry = true;
    public GameObject bulletPrefab;

    private Transform origin;
    private float timer;
    private float fireTimer;

    public override void Spawn(AttackData data, Transform origin)
    {
        this.origin = origin;
        timer = 0f;
        fireTimer = 0f;
        IsFinished = false;
    }

    public override void UpdateBehavior(AttackData data, float dt)
    {
        if (IsFinished) return;

        timer += dt;
        fireTimer += dt;

        if (fireTimer >= fireInterval)
        {
            fireTimer = 0f;
            FireRadial();
        }

        if (timer >= duration)
            IsFinished = true;
    }

    public override void End(AttackData data) { }

    private void FireRadial()
    {
        float angleStep = 360f / bulletCount;

        for (int i = 0; i < bulletCount; i++)
        {
            float angle = angleStep * i;
            Vector3 dir = Quaternion.Euler(0f, angle, 0f) * origin.forward;

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
                attackData = null,
                visual = bulletPrefab
            };

            BulletManager.Instance.SpawnBullet(b);
        }
    }
}