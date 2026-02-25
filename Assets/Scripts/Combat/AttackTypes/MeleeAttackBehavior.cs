using UnityEngine;

[CreateAssetMenu(menuName = "Combat/Behaviors/Melee Attack")]
public class MeleeAttackBehavior : AttackBehavior
{
    private GameObject hitbox;
    private Animator animator;
    private float timer;
    private enum Phase { Warning, Startup, Active, Recovery }
    private Phase phase;

    public override void Spawn(AttackData data, Transform origin)
    {
        // Show warning
        if (data.warningPrefab != null)
        {
            var warning = Object.Instantiate(data.warningPrefab, origin.position, origin.rotation);
            Object.Destroy(warning, data.warningDuration);
        }

        // Prepare hitbox
        hitbox = Object.Instantiate(data.visualPrefab, origin.position, origin.rotation);
        hitbox.SetActive(false);
        animator = hitbox.GetComponent<Animator>();

        timer = data.warningDuration;
        phase = Phase.Warning;
        IsFinished = false;
    }

    public override void UpdateBehavior(AttackData data, float dt)
    {
        timer -= dt;

        switch (phase)
        {
            case Phase.Warning:
                if (timer <= 0f)
                {
                    hitbox.SetActive(true);
                    animator?.SetTrigger("Attack");
                    timer = data.startupDuration;
                    phase = Phase.Startup;
                }
                break;

            case Phase.Startup:
                if (timer <= 0f)
                {
                    phase = Phase.Active;
                    timer = data.activeDuration;
                }
                break;

            case Phase.Active:
                if (timer <= 0f)
                {
                    phase = Phase.Recovery;
                    timer = data.recoveryDuration;
                    hitbox.SetActive(false);
                }
                break;

            case Phase.Recovery:
                if (timer <= 0f)
                    IsFinished = true;
                break;
        }
    }

    public override void End(AttackData data)
    {
        if (hitbox != null)
            Object.Destroy(hitbox);
    }
}