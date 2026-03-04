using UnityEngine;

public class CooldownNode : BTNode
{
    private BTNode child;
    private float cooldown;
    private float timer;

    public CooldownNode(BTNode child, float cooldown)
    {
        this.child = child;
        this.cooldown = cooldown;
    }

    public override BTState Tick()
    {
        if (timer > 0f)
        {
            timer -= Time.deltaTime;
            return BTState.Failure;
        }

        var result = child.Tick();

        if (result == BTState.Success)
            timer = cooldown;

        return result;
    }
}