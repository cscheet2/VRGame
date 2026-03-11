using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boss1StateManager : MonoBehaviour
{
    Boss1BaseState currentState;
    public Boss1AttackState AttackState = new Boss1AttackState();
    public Boss1TiredState TiredState = new Boss1TiredState();
    public Boss1IdleState IdleState = new Boss1IdleState();
    public Boss1WanderState WanderState = new Boss1WanderState();
    public Animator animator;
    //counts the amount of times attacked (change later?)
    public int timesAttacked;

    void Start()
    {
        animator = GetComponent<Animator>();
        currentState = IdleState;
        currentState.EnterState(this);
    }

    void Update()
    {
        currentState.UpdateState(this);
    }

    private void OnCollisionEnter(Collision collision)
    {
        //check if collision is sword
        BossHurt();
    }
    void BossHurt()
    {
        float damage = currentState.OnBossHurt(this);
        //boss.health -= damage;
    }

    public void SwitchState(Boss1BaseState state)
    {
        currentState = state;
        state.EnterState(this);
    }
}
