using UnityEngine;

public struct Bullet
{
    // ===============================
    // Runtime State
    // ===============================

    public Vector3 position;
    public Vector3 direction;

    public float lifeTime;
    public float spawnTime;

    // ===============================
    // Cached Stats (from AttackData)
    // ===============================

    public float speed;
    public float damage;
    public float maxLifetime;
    public float collisionRadius;

    public bool canBeParried;
    public bool destroyOnParry;

    public BulletMovementType movementType;

    // ===============================
    // References
    // ===============================

    public AttackData attackData;     // Source data asset
    public GameObject visual;         // Pooled visual instance
}