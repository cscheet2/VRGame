using UnityEngine;

public class SampleEnemy : BaseEnemy
{
    [Header("Rotation")]
    public bool facePlayer = true;
    public float rotateSpeed = 5f;

    [Header("Shooting")]
    public bool enableShooting = true;
    public float fireInterval = 1f;
    public int bulletsPerShot = 3;
    public float spreadAngle = 10f;

    [Header("Bullet Settings")]
    public GameObject bulletPrefab;
    public float bulletSpeed = 10f;
    public float bulletDamage = 10f;
    public float bulletLifetime = 5f;
    public float collisionRadius = 0.1f;
    public bool canBeParried = true;
    public bool destroyOnParry = true;

    private float fireTimer;

    protected override void Update()
    {
        base.Update();

        HandleRotation();
        HandleShooting(Time.deltaTime);
    }

    void HandleRotation()
    {
        if (!facePlayer || player == null) return;

        Vector3 dir = player.position - transform.position;
        dir.y = 0f;

        if (dir.sqrMagnitude < 0.01f) return;

        Quaternion targetRot = Quaternion.LookRotation(dir);
        transform.rotation = Quaternion.Slerp(
            transform.rotation,
            targetRot,
            rotateSpeed * Time.deltaTime
        );
    }

    void HandleShooting(float dt)
    {
        if (!enableShooting || player == null || bulletPrefab == null)
            return;

        fireTimer += dt;

        if (fireTimer < fireInterval)
            return;

        fireTimer = 0f;

        FireBurst();
    }

    void FireBurst()
    {
        Vector3 baseDirection = (player.position - fireOrigin.position).normalized;

        for (int i = 0; i < bulletsPerShot; i++)
        {
            float t = bulletsPerShot == 1 ? 0.5f : i / (float)(bulletsPerShot - 1);
            float angleOffset = Mathf.Lerp(-spreadAngle, spreadAngle, t);

            Vector3 dir = Quaternion.Euler(0f, angleOffset, 0f) * baseDirection;

            Bullet b = new Bullet
            {
                position = fireOrigin.position,
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

    protected override void Die()
    {
        Debug.Log("Enemy Died");

        if (animator != null)
            animator.SetTrigger("Die");

        base.Die();
    }
}