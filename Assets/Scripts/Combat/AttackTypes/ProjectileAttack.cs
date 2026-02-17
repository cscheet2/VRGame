using UnityEngine;

[RequireComponent(typeof(Rigidbody))]
public abstract class ProjectileAttack : MonoBehaviour, IAttack
{
    [Header("Projectile Settings")]
    public float damage = 5f;
    public bool destroyOnParry = true;
    public GameObject owner;

    protected Rigidbody rb;

    protected virtual void Awake()
    {
        rb = GetComponent<Rigidbody>();
    }

    public abstract bool CanBeParried();
    public abstract void OnParried(ParryContext context);

    public virtual float GetDamage() => damage;
    public virtual GameObject GetOwner() => owner;
}
