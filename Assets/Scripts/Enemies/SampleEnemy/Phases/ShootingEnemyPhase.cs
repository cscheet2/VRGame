using UnityEngine;

[CreateAssetMenu(menuName = "Combat/Phases/Shooting Phase")]
public class ShootingEnemyPhase : EnemyPhase
{
    [Header("Shooting Settings")]
    public float fireInterval = 0.5f;
    public float duration = 5f;

    public override void OnPhaseEnter(BaseEnemy enemy)
    {
        base.OnPhaseEnter(enemy);

        Debug.Log("Entered Shooting Phase");
    }
}