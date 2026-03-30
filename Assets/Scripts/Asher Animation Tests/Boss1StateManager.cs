using UnityEngine;

public class Boss1StateManager : EnemyStateManager
{
    // ===============================
    // STATES
    // ===============================
    public Boss1JumpBackMovement               jumpBackState           = new Boss1JumpBackMovement();
    public Boss1JumpSlamAttack                 jumpSlamState           = new Boss1JumpSlamAttack();
    public Boss1RepeatedGroundSlamBulletAttack repeatedBulletSlamState = new Boss1RepeatedGroundSlamBulletAttack();
    public Boss1ChargeAttack                   chargeAttack            = new Boss1ChargeAttack();
    public Boss1SpinAttack                     spinAttack              = new Boss1SpinAttack();
    public Boss1PunchAttack                    punchAttack             = new Boss1PunchAttack();
    public Boss1IdleState                      idleState               = new Boss1IdleState();
    public Boss1JumpLeftMovement               jumpLeftState           = new Boss1JumpLeftMovement();
    public Boss1JumpRightMovement              jumpRightState          = new Boss1JumpRightMovement();

    private Boss1GroundSlamShockwaveAttack     shockwaveState          = new Boss1GroundSlamShockwaveAttack();
    private Boss1MapSeparatorAttack            mapSeparatorState       = new Boss1MapSeparatorAttack();
    private Boss1TiredState                    tiredState              = new Boss1TiredState();

    // ===============================
    // RANGE SETTINGS
    // ===============================
    [Header("Range Thresholds")]
    public float closeRange = 8f;
    public float farRange   = 18f;

    // ===============================
    // RETREAT SETTINGS
    // ===============================
    [Header("Retreat Settings")]
    public float retreatRange              = 6f;
    [Range(0f, 1f)] public float retreatChance = 0.4f;
    [Range(0f, 1f)] public float sideJumpChance = 0.3f; // Chance to jump left/right instead of back
    public float mapBoundsRadius           = 28f;  // Collision boundary of the map
    public float sideJumpDistance          = 6f;   // How far left/right jump checks

    // ===============================
    // ATTACK WEIGHTS
    // ===============================
    [Header("Close Range Attack Weights")]
    [Range(0, 10)] public int closeWeight_Punch      = 3;
    [Range(0, 10)] public int closeWeight_JumpSlam   = 2;
    [Range(0, 10)] public int closeWeight_Spin       = 2;
    [Range(0, 10)] public int closeWeight_BulletSlam = 1;
    [Range(0, 10)] public int closeWeight_Charge     = 2;

    [Header("Mid Range Attack Weights")]
    [Range(0, 10)] public int midWeight_BulletSlam   = 3;
    [Range(0, 10)] public int midWeight_Charge       = 3;
    [Range(0, 10)] public int midWeight_Spin         = 2;
    [Range(0, 10)] public int midWeight_Shockwave    = 1;
    [Range(0, 10)] public int midWeight_MapSeparator = 1;

    [Header("Far Range Attack Weights")]
    [Range(0, 10)] public int farWeight_Shockwave    = 3;
    [Range(0, 10)] public int farWeight_MapSeparator = 3;
    [Range(0, 10)] public int farWeight_BulletSlam   = 2;
    [Range(0, 10)] public int farWeight_Charge       = 2;

    // ===============================
    // TIRED SETTINGS
    // ===============================
    [Header("Tired Settings")]
    public int   attacksBeforeTired = 4;
    public float tiredDuration      = 3f;

    // ===============================
    // RUNTIME
    // ===============================
    [HideInInspector] public int   attackCounter = 0;
    [HideInInspector] public float health        = 100f;

    public override void Start()
    {
        animator = GetComponent<Animator>();

        if (player == null)
            player = GameObject.FindWithTag("Player").transform;

        ObstacleManager.Instance.PrewarmObstaclePools(obstacleData);

        SwitchState(idleState);
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
        health -= damage;
    }

    // ===============================
    // STATE DECISION
    // ===============================
    public void TransitionToNextState()
    {
        if (attackCounter >= attacksBeforeTired)
        {
            attackCounter = 0;
            SwitchState(tiredState);
            return;
        }

        float dist = Vector3.Distance(transform.position, player.position);

        // Retreat check — never retreat into idle
        if (dist <= retreatRange && Random.value <= retreatChance)
        {
            SwitchState(ChooseRetreatState());
            return;
        }

        // Always picks a real attack — idle and tired are never in the pool
        EnemyBaseState next = ChooseAttack(dist);
        attackCounter++;
        SwitchState(next);
    }

    // ===============================
    // RETREAT LOGIC
    // ===============================
    public EnemyBaseState ChooseRetreatState()
    {
        // Occasionally try jumping sideways instead of straight back
        if (Random.value <= sideJumpChance)
        {
            Vector3 toPlayer = (player.position - transform.position).normalized;
            Vector3 right    = Vector3.Cross(Vector3.up, toPlayer).normalized;

            bool canJumpRight = IsPositionInBounds(transform.position + right * sideJumpDistance);
            bool canJumpLeft  = IsPositionInBounds(transform.position - right * sideJumpDistance);

            if (canJumpRight && canJumpLeft)
            {
                // Both clear — pick randomly
                return Random.value > 0.5f ? (EnemyBaseState)jumpRightState : jumpLeftState;
            }
            else if (canJumpRight)
            {
                return jumpRightState;
            }
            else if (canJumpLeft)
            {
                return jumpLeftState;
            }

            // Neither side clear — fall through to jump back
        }

        return jumpBackState;
    }

    // Check if a position is within the map boundary
    public bool IsPositionInBounds(Vector3 pos)
    {
        // Flat distance from map center — assumes circular arena
        Vector2 flat = new Vector2(pos.x, pos.z);
        return flat.magnitude <= mapBoundsRadius;
    }

    // ===============================
    // ATTACK SELECTION
    // ===============================
    private EnemyBaseState ChooseAttack(float dist)
    {
        if (dist <= closeRange)
            return PickWeighted(new (EnemyBaseState, int)[]
            {
                (punchAttack,             closeWeight_Punch),
                (jumpSlamState,           closeWeight_JumpSlam),
                (spinAttack,              closeWeight_Spin),
                (repeatedBulletSlamState, closeWeight_BulletSlam),
                (chargeAttack,            closeWeight_Charge),
            });

        if (dist >= farRange)
            return PickWeighted(new (EnemyBaseState, int)[]
            {
                (shockwaveState,          farWeight_Shockwave),
                (mapSeparatorState,       farWeight_MapSeparator),
                (repeatedBulletSlamState, farWeight_BulletSlam),
                (chargeAttack,            farWeight_Charge),
            });

        return PickWeighted(new (EnemyBaseState, int)[]
        {
            (repeatedBulletSlamState, midWeight_BulletSlam),
            (chargeAttack,            midWeight_Charge),
            (spinAttack,              midWeight_Spin),
            (shockwaveState,          midWeight_Shockwave),
            (mapSeparatorState,       midWeight_MapSeparator),
        });
    }

    // ===============================
    // WEIGHTED RANDOM
    // ===============================
    private EnemyBaseState PickWeighted((EnemyBaseState state, int weight)[] options)
    {
        int total = 0;
        foreach (var o in options)
            total += o.weight;

        if (total <= 0)
            return options[0].state;

        int roll       = Random.Range(0, total);
        int cumulative = 0;

        foreach (var o in options)
        {
            cumulative += o.weight;
            if (roll < cumulative)
                return o.state;
        }

        return options[0].state;
    }

    public void SwitchState(EnemyBaseState newState)
    {
        currentState = newState;
        currentState.EnterState(this);
    }
}