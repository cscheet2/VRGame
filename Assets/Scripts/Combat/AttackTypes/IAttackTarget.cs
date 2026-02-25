using UnityEngine;

// Interface for behaviors that need a target (like player)
public interface IAttackTarget
{
    void SetTarget(Transform target);
}