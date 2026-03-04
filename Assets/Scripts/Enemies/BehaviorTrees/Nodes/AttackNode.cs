public class AttackNode : BTNode
{
    private BaseEnemy enemy;
    private string attackID;
    private AttackState current;

    public AttackNode(BaseEnemy enemy, string attackID)
    {
        this.enemy = enemy;
        this.attackID = attackID;
    }

    public override BTState Tick()
    {
        if (!enemy.attackRegistry.TryGetValue(attackID, out var data))
            return BTState.Failure;

        if (current == null)
        {
            enemy.ExecuteAttack(data);
            current = enemy.currentAttack;
            return BTState.Running;
        }

        if (current.IsFinished)
        {
            current = null;
            return BTState.Success;
        }

        return BTState.Running;
    }
}