using System.Collections.Generic;
using UnityEngine;

public class SampleEnemy : MonoBehaviour
{
    public Transform fireOrigin;
    public Transform player;

    private List<SampleAttackPhase> phases = new List<SampleAttackPhase>();
    private SampleAttackPhase currentPhase;
    private int currentPhaseIndex = 0;

    void Start()
    {
        SetupPhases();
        StartPhase(0);
    }

    void Update()
    {
        if (currentPhase == null) return;

        currentPhase.UpdatePhase(Time.deltaTime);

        if (currentPhase.IsFinished())
            NextPhase();
    }

    void SetupPhases()
    {
        phases.Add(new SampleRadialBulletPhase(fireOrigin, 5f, 1f, 12, 8f));
        phases.Add(new SampleSpiralPhase(fireOrigin, 6f, 0.1f));
        phases.Add(new SampleTargetedBurstPhase(fireOrigin, player, 4f, 0.3f, 5, 12f));
    }

    void StartPhase(int index)
    {
        currentPhaseIndex = index;
        currentPhase = phases[index];
        currentPhase.Enter();
    }

    void NextPhase()
    {
        currentPhase.Exit();
        currentPhaseIndex = (currentPhaseIndex + 1) % phases.Count;
        StartPhase(currentPhaseIndex);
    }
}
