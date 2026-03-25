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
    public bool pendingDestroy;
    public BulletMovementType movementType;
    public Vector3 velocity;

    // ===============================
    // References
    // ===============================

    public AttackData attackData;
    public GameObject visual;
    public GameObject visualPrefab; // Add this — the original prefab asset, never modified
}