using System.Collections.Generic;
using UnityEngine;

public interface IEnemyController
{
    // Returns the list of currently active attacks (melee + ranged)
    List<IAttack> GetActiveAttacks();

    // Called when one of the enemy's attacks is parried normally
    void OnAttackBlocked(IAttack attack);

    // Called when one of the enemy's attacks is parried perfectly
    void OnParryStunned(IAttack attack);

    // Returns the enemy's current or predicted position (for telegraphing, targeting)
    Vector3 GetPredictedPosition();

    // Optional: triggers a ranged attack
    void TriggerRangedAttack();

    // Optional: returns the enemy GameObject itself
    GameObject GetEnemyObject();
}
