using UnityEngine;

public interface IAttack
{
    bool CanBeParried();             // Can this attack be parried at all?
    void OnParried(ParryContext context);  // What happens if it is parried
    float GetDamage();                // Damage the attack deals
    GameObject GetOwner();            // Optional: who spawned the attack
}