using UnityEngine;

public abstract class Boss1BaseState
{
    public abstract void EnterState(Boss1StateManager state);

    public abstract void UpdateState(Boss1StateManager state);

    public abstract float OnBossHurt(Boss1StateManager state);
}
