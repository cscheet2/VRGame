using UnityEngine;

public class SampleTargetedBurstPhase : SampleAttackPhase
{
    private Transform player;
    private float fireInterval;
    private float fireTimer;
    private int bulletsPerBurst;
    private float bulletSpeed;

    public SampleTargetedBurstPhase(Transform origin, Transform player, float duration, float fireInterval, int bulletsPerBurst, float bulletSpeed)
        : base(origin, duration)
    {
        this.player = player;
        this.fireInterval = fireInterval;
        this.bulletsPerBurst = bulletsPerBurst;
        this.bulletSpeed = bulletSpeed;
    }

    public override void UpdatePhase(float dt)
    {
        base.UpdatePhase(dt);
        fireTimer += dt;

        if (fireTimer >= fireInterval)
        {
            fireTimer = 0f;
            FireBurst();
        }
    }

    void FireBurst()
    {
        Vector3 direction = (player.position - origin.position).normalized;
        float spread = 10f;

        for (int i = 0; i < bulletsPerBurst; i++)
        {
            float angleOffset = Mathf.Lerp(-spread, spread, i / (float)(bulletsPerBurst - 1));
            Vector3 dir = Quaternion.Euler(0, angleOffset, 0) * direction;

            Bullet b = new Bullet
            {
                position = origin.position,
                direction = dir.normalized,
                speed = bulletSpeed,
                damage = 12f,
                maxLifetime = 5f,
                movementType = 0,
                canBeParried = true,
                parryAngle = 45f,
                collisionRadius = 0.1f
            };

            BulletManager.Instance.SpawnBullet(b);
        }
    }
}
