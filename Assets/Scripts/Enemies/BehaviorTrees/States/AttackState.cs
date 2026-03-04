using UnityEngine;

public class AttackState
{
    private AttackData data;
    private AttackBehavior behavior;

    public bool IsFinished => behavior == null || behavior.IsFinished;

    public AttackState(AttackData data, Transform origin)
    {
        this.data = data;
        behavior = Object.Instantiate(data.behaviorPrefab);
        behavior.Spawn(data, origin);
    }

    public void Tick(float dt)
    {
        behavior?.UpdateBehavior(data, dt);
    }

    public void Exit()
    {
        behavior?.End(data);
    }
}