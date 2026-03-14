using UnityEngine;

[CreateAssetMenu(menuName = "Combat/Phases/Auto Shooting Phase")]
public class AutoShootingPhase : EnemyPhase
{
    public string attackID;
    public float fireInterval = 1f;

    private float timer;

    public override void OnPhaseEnter(BaseEnemy enemy)
    {
        timer = 0f;
    }

    public override void OnPhaseExit(BaseEnemy enemy)
    {
        timer = 0f;
    }

    public void TickPhase(BaseEnemy enemy, float dt)
    {
        timer += dt;

        if (timer >= fireInterval)
        {
            timer = 0f;

            if (enemy.attackRegistry.TryGetValue(attackID, out var data))
            {
                enemy.ExecuteAttack(data);
            }
        }
    }
}