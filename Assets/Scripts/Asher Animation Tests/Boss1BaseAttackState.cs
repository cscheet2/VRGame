using UnityEngine;

public abstract class Boss1BaseAttackState : Boss1BaseState
{
    public abstract override void EnterState(Boss1StateManager state);

    public abstract override void UpdateState(Boss1StateManager state);

    public abstract override float OnBossHurt(Boss1StateManager state);

    //public abstract <> SomeOtherMethodsJustForAttacks();
    //??????
}
