using UnityEngine;

public class SimpleEnemyAnimator : MonoBehaviour
{
    public Animator animator;

    public void PlayAttack()
    {
        animator.SetTrigger("Attack"); // you’ll need a trigger parameter
    }

    public void PlayIdle()
    {
        animator.SetTrigger("Idle");
    }
}
