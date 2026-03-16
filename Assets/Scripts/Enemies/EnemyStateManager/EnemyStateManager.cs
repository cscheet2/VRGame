using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public abstract class EnemyStateManager : MonoBehaviour
{
    EnemyBaseState currentState;
    public Animator animator;

    public virtual void Start()
    {
        animator = GetComponent<Animator>();
        currentState = currentState;
        currentState.EnterState(this);
    }

    public virtual void Update()
    {
        currentState.UpdateState(this);
    }

    protected virtual void OnCollisionEnter(Collision collision)
    {
        //check if collision is sword
        BossHurt();
    }
    public virtual void BossHurt()
    {
        float damage = currentState.OnBossHurt(this);
        //boss.health -= damage;
    }
}
