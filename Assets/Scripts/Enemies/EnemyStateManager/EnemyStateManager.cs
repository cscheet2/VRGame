using UnityEngine;

public abstract class EnemyStateManager : MonoBehaviour
{
    protected EnemyBaseState currentState;
    public Animator animator;
    public Transform player;
    public BossObstacleData obstacleData;
    public BossBulletData bulletData;

    public virtual void Start()
    {
        animator = GetComponent<Animator>();

        if (player == null)
            player = GameObject.FindWithTag("Player").transform;

        currentState = this.currentState;
        currentState.EnterState(this);
    }

    public virtual void Update()
    {
        currentState.UpdateState(this);
    }

    protected virtual void OnCollisionEnter(Collision collision)
    {
        BossHurt();
    }

    public virtual void BossHurt()
    {
        float damage = currentState.OnBossHurt(this);
    }

    public void FireBullet(Vector3 direction, AttackData data)
    {
        Bullet b = new Bullet
        {
            position        = transform.position,
            direction       = direction.normalized,
            speed           = data.bulletSpeed,
            damage          = data.damage,
            maxLifetime     = data.lifetime,
            collisionRadius = data.collisionRadius,
            canBeParried    = data.canBeParried,
            destroyOnParry  = data.destroyOnParry,
            movementType    = data.movementType,
            visual          = data.bulletPrefab,
            visualPrefab    = data.bulletPrefab,
            attackData      = data,
        };

        BulletManager.Instance.SpawnBullet(b);
    }
}