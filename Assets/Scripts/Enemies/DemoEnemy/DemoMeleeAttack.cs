using UnityEngine;

public class DemoMeleeAttack : MonoBehaviour, IAttack
{
    [Header("Attack Settings")]
    public bool canBeParried = true;
    public float damage = 10f;
    public GameObject owner;

    [Header("Hitbox")]
    public Collider swordCollider; // Assign the sword collider in the Inspector

    // IAttack implementation
    public bool CanBeParried() => canBeParried;

    public void OnParried(ParryContext context)
    {
        if (context.isPerfect)
            Debug.Log($"{name}: Perfect parry!");
        else
            Debug.Log($"{name}: Attack blocked!");
    }

    public float GetDamage() => damage;

    public GameObject GetOwner() => owner;

    // --- NEW: Methods to enable/disable collider ---
    public void EnableHitbox()
    {
        if (swordCollider != null) swordCollider.enabled = true;
    }

    public void DisableHitbox()
    {
        if (swordCollider != null) swordCollider.enabled = false;
    }
}
