using UnityEngine;

public abstract class MeleeAttack : MonoBehaviour, IAttack
{
    [Header("Melee Settings")]
    public float damage = 10f;
    public AnimationClip attackAnimation;
    public GameObject owner;

    public abstract bool CanBeParried();
    public abstract void OnParried(ParryContext context);

    public virtual float GetDamage() => damage;
    public virtual GameObject GetOwner() => owner;

    // Optional helper
    public virtual void PlayAnimation()
    {
        if (attackAnimation != null && TryGetComponent<Animator>(out Animator anim))
        {
            anim.Play(attackAnimation.name);
        }
    }
}
