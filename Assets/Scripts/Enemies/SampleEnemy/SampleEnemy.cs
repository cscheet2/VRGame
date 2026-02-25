using System.Collections.Generic;
using UnityEngine;

public class SampleEnemy : MonoBehaviour
{
    [Header("References")]
    public Transform fireOrigin;
    public Transform player; // optional, only needed for targeted attacks

    [Header("AttackData Assets")]
    public AttackData radialAttackData;
    public AttackData spiralAttackData;
    public AttackData targetedAttackData;

    private List<AttackState> attackStates = new List<AttackState>();
    private int currentIndex = 0;
    private AttackState currentState;

    void Start()
    {
        SetupAttackStates();
        StartState(0);
    }

    void Update()
    {
        if (currentState == null) return;

        currentState.Tick(Time.deltaTime);

        // Move to next state if finished
        if (currentState.attack.behaviorInstance != null && currentState.attack.behaviorInstance.IsFinished)
        {
            NextState();
        }
    }

    void SetupAttackStates()
    {
        attackStates.Clear();

        // Radial attack
        if (radialAttackData != null)
        {
            radialAttackData.InitializeBehavior();
            attackStates.Add(new AttackState { attack = radialAttackData });
        }

        // Spiral attack
        if (spiralAttackData != null)
        {
            spiralAttackData.InitializeBehavior();
            attackStates.Add(new AttackState { attack = spiralAttackData });
        }

        // Targeted attack
        if (targetedAttackData != null)
        {
            targetedAttackData.InitializeBehavior();

            // Assign player as target if the behavior supports it
            if (targetedAttackData.behaviorInstance is IAttackTarget targetable)
            {
                targetable.SetTarget(player);
            }

            attackStates.Add(new AttackState { attack = targetedAttackData });
        }
    }

    void StartState(int index)
    {
        currentIndex = index;
        currentState = attackStates[index];
        currentState.Enter(fireOrigin);
    }

    void NextState()
    {
        currentState.Exit();
        currentIndex = (currentIndex + 1) % attackStates.Count;
        StartState(currentIndex);
    }
}