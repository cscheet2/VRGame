using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boss1TiredState : EnemyBaseState
{
    public override void EnterState(EnemyStateManager state)
    {
        //reset attack counter
    }

    public override void UpdateState(EnemyStateManager state)
    {

    }

    public override float OnBossHurt(EnemyStateManager state)
    {
        return 0;
    }
}
