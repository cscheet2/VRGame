using UnityEngine;

[CreateAssetMenu(menuName = "Combat/Behaviors/Sample Spiral Burst")]
public class SampleSpiralBehavior : AttackBehavior
{
    [Header("Spiral Settings")]
    public float fireRate = 0.1f;
    public float duration = 5f;
    public float angleStep = 15f;

    [Header("Bullet Settings")]
    public float bulletSpeed = 8f;
    public float bulletDamage = 8f;
    public float bulletLifetime = 8f;
    public float collisionRadius = 0.1f;
    public bool canBeParried = true;
    public bool destroyOnParry = true;
    public GameObject bulletPrefab;

    private Transform origin;
    private float timer;
    private float fireTimer;
    private float currentAngle;

    public override void Spawn(AttackData data, Transform origin)
    {
        this.origin = origin;
        timer = 0f;
        fireTimer = 0f;
        currentAngle = 0f;
        IsFinished = false;
    }

    public override void UpdateBehavior(AttackData data, float dt)
    {
        if (IsFinished) return;

        timer += dt;
        fireTimer += dt;

        if (fireTimer >= fireRate)
        {
            fireTimer = 0f;
            FireSpiral();
        }

        if (timer >= duration)
            IsFinished = true;
    }

    public override void End(AttackData data) { }

    private void FireSpiral()
    {
        currentAngle += angleStep;
        Vector3 dir = Quaternion.Euler(0f, currentAngle, 0f) * origin.forward;

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