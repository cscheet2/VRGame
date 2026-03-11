using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boss1WanderState : Boss1BaseState
{
    private float wanderSpeed = 1;
    //How to get this wanderSpeed parameter in the unity editor?
    public override void EnterState(Boss1StateManager state)
    {

    }

    public override void UpdateState(Boss1StateManager state)
    {
        //example movement code for a state
        state.transform.Translate(Vector3.forward * this.wanderSpeed * Time.deltaTime);
        state.transform.Rotate(0, 40 * Time.deltaTime, 0);

        /*
         * Pseudocode for switching states
        if (attackCondition)
        {
            state.SwitchState(state.AttackState);
        }
        */
    }

    public override float OnBossHurt(Boss1StateManager state)
    {
        return 0;
    }
}