using System.Collections.Generic;
using UnityEngine;

public abstract class BaseEnemyController : MonoBehaviour, IEnemyController
{
    [Header("Enemy Attacks")]
    public List<IAttack> attacks = new List<IAttack>();

    [Header("Movement")]
    public float moveSpeed = 3f;
    public Vector3 targetPosition;

    public virtual List<IAttack> GetActiveAttacks()
    {
        // By default, all attacks are active; override for timing-based attacks
        return attacks;
    }

    public virtual void OnAttackBlocked(IAttack attack)
    {
        Debug.Log($"{name}: Attack {attack.GetType().Name} blocked!");
        // Default reaction: recoil animation
    }

    public virtual void OnParryStunned(IAttack attack)
    {
        Debug.Log($"{name}: Attack {attack.GetType().Name} parried perfectly! Stunned!");
        // Default reaction: disable movement, play stun animation
    }

    public virtual Vector3 GetPredictedPosition()
    {
        // Simple default prediction: move forward
        return transform.position + transform.forward * moveSpeed;
    }

    public virtual void TriggerRangedAttack()
    {
        // Optional override for ranged attacks
    }

    public virtual GameObject GetEnemyObject() => gameObject;
}
