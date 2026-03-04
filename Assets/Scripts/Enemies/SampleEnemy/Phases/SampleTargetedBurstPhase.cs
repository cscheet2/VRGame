using UnityEngine;

[CreateAssetMenu(menuName = "Combat/Behaviors/Targeted Burst")]
public class SampleTargetedBurstBehavior : AttackBehavior
{
    [Header("Burst Settings")]
    public int bulletsPerBurst = 3;
    public float fireInterval = 0.5f;
    public float duration = 5f;
    public float spreadAngle = 10f;

    [Header("Bullet Settings")]
    public float collisionRadius = 0.1f;
    public bool canBeParried = true;
    public bool destroyOnParry = true;

    private Transform origin;
    private Transform player;
    private AttackData data;

    private float timer;
    private float fireTimer;

    public override void Spawn(AttackData data, Transform origin)
    {
        this.origin = origin;
        this.data = data;

        // Get player once from scene
        player = GameObject.FindWithTag("Player")?.transform;

        timer = 0f;
        fireTimer = 0f;
        IsFinished = false;
    }

    public override void UpdateBehavior(AttackData data, float dt)
    {
        if (IsFinished || player == null)
            return;

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

    public override void End(AttackData data)
    {
        // Nothing special needed here
    }

    private void FireBurst()
    {
        Vector3 baseDirection = (player.position - origin.position).normalized;

        for (int i = 0; i < bulletsPerBurst; i++)
        {
            float t = bulletsPerBurst == 1 ? 0.5f : i / (float)(bulletsPerBurst - 1);
            float angleOffset = Mathf.Lerp(-spreadAngle, spreadAngle, t);

            Vector3 dir = Quaternion.Euler(0f, angleOffset, 0f) * baseDirection;

            Bullet b = new Bullet
            {
                position = origin.position,
                direction = dir.normalized,

                // ? Use AttackData stats
                speed = data.speed,
                damage = data.damage,
                maxLifetime = data.maxLifetime,

                collisionRadius = collisionRadius,
                canBeParried = canBeParried,
                destroyOnParry = destroyOnParry,

                movementType = BulletMovementType.Straight,

                attackData = data,
                visual = data.visualPrefab
            };

            BulletManager.Instance.SpawnBullet(b);
        }
    }
}