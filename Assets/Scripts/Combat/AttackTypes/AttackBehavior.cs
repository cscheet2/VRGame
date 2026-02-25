using UnityEngine;

public abstract class AttackBehavior : ScriptableObject
{
    public abstract void Spawn(AttackData data, Transform origin);
    public abstract void UpdateBehavior(AttackData data, float dt);
    public abstract void End(AttackData data);

    public bool IsFinished { get; protected set; }
}