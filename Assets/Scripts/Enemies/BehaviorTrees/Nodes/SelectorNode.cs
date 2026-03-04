using System.Collections.Generic;

public class SelectorNode : BTNode
{
    private List<BTNode> children;

    public SelectorNode(List<BTNode> children)
    {
        this.children = children;
    }

    public override BTState Tick()
    {
        foreach (var child in children)
        {
            var result = child.Tick();
            if (result != BTState.Failure)
                return result;
        }

        return BTState.Failure;
    }
}