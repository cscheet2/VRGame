using UnityEngine;

public abstract class SampleAttackPhase
{
    protected Transform origin;
    protected float duration;
    protected float timer;

    public SampleAttackPhase(Transform origin, float duration)
    {
        this.origin = origin;
        this.duration = duration;
    }

    public virtual void Enter() => timer = 0f;

    public virtual void UpdatePhase(float dt)
    {
        timer += dt;
    }

    public virtual bool IsFinished() => timer >= duration;

    public virtual void Exit() { }
}
