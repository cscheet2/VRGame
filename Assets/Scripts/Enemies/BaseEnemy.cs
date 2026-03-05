using System.Collections.Generic;
using UnityEngine;

public abstract class BaseEnemy : MonoBehaviour
{
    [Header("Core")]
    public float maxHealth = 100f;
    protected float currentHealth;

    [Header("References")]
    public Transform player;
    public Transform fireOrigin;

    [Header("Phases")]
    public List<EnemyPhase> phases;

    public EnemyPhase currentPhase;
    public BTNode currentTree;
    public AttackState currentAttack;

    public Animator animator;

    public Dictionary<string, AttackData> attackRegistry =
        new Dictionary<string, AttackData>();

    protected virtual void Awake()
    {
        currentHealth = maxHealth;
        animator = GetComponent<Animator>();
    }

    protected virtual void Start()
    {
        EvaluatePhase();
    }

    protected virtual void Update()
    {
        EvaluatePhase();
        currentTree?.Tick();
        currentAttack?.Tick(Time.deltaTime);
    }

    void EvaluatePhase()
    {
        if (phases == null || phases.Count == 0)
            return;

        float hpPercent = currentHealth / maxHealth;

        EnemyPhase bestPhase = null;

        // Pick the lowest threshold phase we qualify for
        foreach (var phase in phases)
        {
            if (hpPercent <= phase.enterAtHealthPercent)
            {
                if (bestPhase == null ||
                    phase.enterAtHealthPercent < bestPhase.enterAtHealthPercent)
                {
                    bestPhase = phase;
                }
            }
        }

        if (bestPhase != null && currentPhase != bestPhase)
        {
            SwitchPhase(bestPhase);
        }
    }

    public void ExecuteAttack(AttackData data)
    {
        if (currentAttack != null) return;
        currentAttack = new AttackState(data, fireOrigin);
    }

    public void AttackFinished()
    {
        currentAttack?.Exit();
        currentAttack = null;
    }

    // Animation Events
    public void Anim_AttackFinished()
    {
        AttackFinished();
    }

    public void TakeDamage(float dmg)
    {
        currentHealth -= dmg;
        if (currentHealth <= 0f)
            Die();
    }

    protected virtual void Die()
    {
        Destroy(gameObject);
    }

    void RegisterAttacks(List<AttackData> attacks)
    {
        attackRegistry.Clear();

        foreach (var attack in attacks)
        {
            if (attack == null || string.IsNullOrEmpty(attack.attackID))
                continue;

            attackRegistry[attack.attackID] = attack;
        }
    }

    public void SwitchPhase(EnemyPhase newPhase)
    {
        currentPhase = newPhase;

        // Reset current attack
        currentAttack?.Exit();
        currentAttack = null;

        RegisterAttacks(newPhase.attacks);

        if (newPhase.rootNode != null)
            currentTree = newPhase.rootNode.CreateNode(this);

        Debug.Log($"{name} switched to phase at {newPhase.enterAtHealthPercent * 100}% HP");
    }
}