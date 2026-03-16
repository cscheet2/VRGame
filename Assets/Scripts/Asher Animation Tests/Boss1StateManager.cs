using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boss1StateManager : EnemyStateManager
{
    EnemyBaseState currentState;
    public Boss1AttackState AttackState = new Boss1AttackState();
    public Boss1TiredState TiredState = new Boss1TiredState();
    public Boss1IdleState IdleState = new Boss1IdleState();
    public Boss1WanderState WanderState = new Boss1WanderState();
    public Animator animator;
    //counts the amount of times attacked (change later?)
    public int timesAttacked;

    public override void Start()
    {
        animator = GetComponent<Animator>();
        currentState = IdleState;
        currentState.EnterState(this);
    }

    public override void Update()
    {
        currentState.UpdateState(this);
    }

    override protected void OnCollisionEnter(Collision collision)
    {
        //check if collision is sword
        BossHurt();
    }
    public override void BossHurt()
    {
        float damage = currentState.OnBossHurt(this);
        //boss.health -= damage;
    }
}
