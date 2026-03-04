using UnityEngine;

public class SampleEnemy : BaseEnemy
{
    [Header("Rotation")]
    public bool facePlayer = true;
    public float rotateSpeed = 5f;

    protected override void Update()
    {
        base.Update();
        HandleRotation();
    }

    void HandleRotation()
    {
        if (!facePlayer || player == null) return;

        Vector3 dir = player.position - transform.position;
        dir.y = 0f;

        if (dir.sqrMagnitude < 0.01f) return;

        Quaternion targetRot = Quaternion.LookRotation(dir);
        transform.rotation = Quaternion.Slerp(
            transform.rotation,
            targetRot,
            rotateSpeed * Time.deltaTime
        );
    }

    protected override void Die()
    {
        Debug.Log("Enemy Died");

        if (animator != null)
            animator.SetTrigger("Die");

        base.Die();
    }
}