using UnityEngine;

public class SampleRadialBulletPhase : SampleAttackPhase
{
    private float fireInterval;
    private float fireTimer;
    private int bulletCount;
    private float bulletSpeed;

    public SampleRadialBulletPhase(Transform origin, float duration, float fireInterval, int bulletCount, float bulletSpeed)
        : base(origin, duration)
    {
        this.fireInterval = fireInterval;
        this.bulletCount = bulletCount;
        this.bulletSpeed = bulletSpeed;
    }

    public override void UpdatePhase(float dt)
    {
        base.UpdatePhase(dt);
        fireTimer += dt;

        if (fireTimer >= fireInterval)
        {
            fireTimer = 0f;
            FireRadial();
        }
    }

    void FireRadial()
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
                damage = 10f,
                maxLifetime = 6f,
                movementType = 0,
                canBeParried = true,
                parryAngle = 45f,
                collisionRadius = 0.1f
            };

            BulletManager.Instance.SpawnBullet(b);
        }
    }
}
