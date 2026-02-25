using UnityEngine;

public class AttackState
{
    public AttackData attack;
    private Transform origin;

    public void Enter(Transform originTransform)
    {
        origin = originTransform;
        attack.InitializeBehavior();
        attack.behaviorInstance?.Spawn(attack, origin);
    }

    public void Tick(float dt)
    {
        attack.behaviorInstance?.UpdateBehavior(attack, dt);

        if (attack.behaviorInstance != null && attack.behaviorInstance.IsFinished)
            Exit();
    }

    public void Exit()
    {
        attack.behaviorInstance?.End(attack);
    }
}