using System.Collections.Generic;

public class SequenceNode : BTNode
{
    private List<BTNode> children;
    private int current;

    public SequenceNode(List<BTNode> children)
    {
        this.children = children;
    }

    public override BTState Tick()
    {
        var result = children[current].Tick();

        if (result == BTState.Running)
            return BTState.Running;

        if (result == BTState.Failure)
        {
            current = 0;
            return BTState.Failure;
        }

        current++;

        if (current >= children.Count)
        {
            current = 0;
            return BTState.Success;
        }

        return BTState.Running;
    }

    public override void Reset()
    {
        current = 0;
    }
}