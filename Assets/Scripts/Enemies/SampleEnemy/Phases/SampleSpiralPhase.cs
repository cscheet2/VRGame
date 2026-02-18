using UnityEngine;

public class SampleSpiralPhase : SampleAttackPhase
{
    private float fireRate;
    private float fireTimer;
    private float currentAngle;

    public SampleSpiralPhase(Transform origin, float duration, float fireRate)
        : base(origin, duration)
    {
        this.fireRate = fireRate;
    }

    public override void UpdatePhase(float dt)
    {
        base.UpdatePhase(dt);
        fireTimer += dt;

        if (fireTimer >= fireRate)
        {
            fireTimer = 0f;
            FireSpiral();
        }
    }

    void FireSpiral()
    {
        currentAngle += 15f;
        Vector3 dir = Quaternion.Euler(0f, currentAngle, 0f) * origin.forward;

        Bullet b = new Bullet
        {
            position = origin.position,
            direction = dir.normalized,
            speed = 8f,
            damage = 8f,
            maxLifetime = 8f,
            movementType = 0,
            canBeParried = true,
            parryAngle = 30f,
            collisionRadius = 0.1f
        };

        BulletManager.Instance.SpawnBullet(b);
    }
}
