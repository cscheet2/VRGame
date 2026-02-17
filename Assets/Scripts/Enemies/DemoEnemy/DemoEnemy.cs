using System.Collections.Generic;
using UnityEngine;

public class DemoEnemy : MonoBehaviour
{
    [Header("Movement Settings")]
    public float moveSpeed = 3f;
    public float attackDistance = 2f;

    [Header("Attacks")]
    public List<IAttack> attacks; // List of attacks this enemy can perform

    Transform player;
    Animator animator;
    bool isAttacking = false;

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player")?.transform;
        animator = GetComponentInChildren<Animator>();
    }

    void Update()
    {
        if (player == null) return;

        float distance = Vector3.Distance(transform.position, player.position);

        if (distance > attackDistance)
        {
            // Move toward player
            transform.LookAt(player);
            transform.position += transform.forward * moveSpeed * Time.deltaTime;
        }
        else if (!isAttacking)
        {
            // Pick a random attack from the list
            if (attacks != null && attacks.Count > 0)
            {
                IAttack attack = attacks[Random.Range(0, attacks.Count)];
                PerformAttack(attack);
            }
        }
    }

    void PerformAttack(IAttack attack)
    {
        // Trigger animation (assumes attack animation is linked to "Attack" trigger)
        animator.SetTrigger("Attack");

        // If attack has other setup (like enabling a sword collider), do it here
        if (attack is DemoMeleeAttack meleeAttack)
        {
            meleeAttack.EnableHitbox(); // Now exists!
        }


        isAttacking = true;
    }

    // Called via Animation Event at the end of attack animation
    public void OnAttackComplete()
    {
        isAttacking = false;

        // Optionally disable sword hitboxes here if needed
        foreach (var attack in attacks)
        {
            if (attack is DemoMeleeAttack meleeAttack)
            {
                meleeAttack.DisableHitbox(); // Now exists!
            }
        }
    }
}
