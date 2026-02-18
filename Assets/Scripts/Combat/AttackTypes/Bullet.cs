using UnityEngine;

public struct Bullet
{
    public Vector3 position;
    public Vector3 direction;
    public float speed;
    public float damage;

    public float maxLifetime;   // max time alive
    public float lifeTime;      // runtime counter

    public int movementType;    // 0 = linear, 1 = custom

    public bool canBeParried;
    public float parryAngle;

    public float collisionRadius;

    public GameObject visual;   // reference to pooled visual
}
