using UnityEngine;

public class Boss1StateManager : EnemyStateManager
{
    private Boss1GroundSlamShockwaveAttack shockwaveState = new Boss1GroundSlamShockwaveAttack();
    private Boss1MapSeparatorAttack mapSeperatorState = new Boss1MapSeparatorAttack();
    private Boss1RepeatedGroundSlamBulletAttack repeatedGroundSlamAttack = new Boss1RepeatedGroundSlamBulletAttack();

    public override void Start()
    {
        animator = GetComponent<Animator>();

        if (player == null)
            player = GameObject.FindWithTag("Player").transform;

        ObstacleManager.Instance.PrewarmObstaclePools(obstacleData);

        currentState = repeatedGroundSlamAttack;
        currentState.EnterState(this);
    }

    public override void Update()
    {
        currentState.UpdateState(this);
    }

    override protected void OnCollisionEnter(Collision collision)
    {
        BossHurt();
    }

    public override void BossHurt()
    {
        float damage = currentState.OnBossHurt(this);
    }

    public void PrewarmObstaclePools(BossObstacleData data)
    {
        if (data.wallPrefab != null)
            BulletVisualPool.Instance.PrewarmPool(data.wallPrefab, 3);   // exactly 3 walls
    
        if (data.shockwavePrefab != null)
            BulletVisualPool.Instance.PrewarmPool(data.shockwavePrefab, 5); // a few shockwaves
    }
}