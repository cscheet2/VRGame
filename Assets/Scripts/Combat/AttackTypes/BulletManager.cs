using System.Collections.Generic;
using UnityEngine;

public class BulletManager : MonoBehaviour
{
    public static BulletManager Instance { get; private set; }

    private List<Bullet> bullets = new List<Bullet>();

    void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;
    }

    void Update()
    {
        for (int i = bullets.Count - 1; i >= 0; i--)
        {
            Bullet b = bullets[i];

            // Move
            b.position += b.direction * b.speed * Time.deltaTime;

            // Update visual
            if (b.visual != null)
                b.visual.transform.position = b.position;

            // Update lifetime
            b.lifeTime += Time.deltaTime;
            if (b.lifeTime >= b.maxLifetime)
            {
                if (b.visual != null)
                    BulletVisualPool.Instance.Despawn(b.visual);
                bullets.RemoveAt(i);
                continue;
            }

            bullets[i] = b; // assign back because struct
        }
    }

    public void SpawnBullet(Bullet b)
    {
        b.lifeTime = 0f;
        b.visual = BulletVisualPool.Instance.Spawn(b.position, b.direction);
        bullets.Add(b);
    }

    // Sword calls this for parries
    public void TryParryBullets(Vector3 prevBase, Vector3 prevTip, Vector3 currBase, Vector3 currTip, float bladeRadius, Vector3 swordVelocity, bool isPerfect)
    {
        for (int i = bullets.Count - 1; i >= 0; i--)
        {
            Bullet b = bullets[i];

            if (!b.canBeParried) continue;

            // Simple capsule-sphere intersection
            Vector3 closest = ClosestPointOnLineSegment(currBase, currTip, b.position);
            float combined = bladeRadius + b.collisionRadius;
            if ((closest - b.position).sqrMagnitude <= combined * combined)
            {
                // Angle check
                float angle = Vector3.Angle(-b.direction, swordVelocity);
                if (angle <= b.parryAngle)
                {
                    // Reflect bullet
                    b.direction = swordVelocity.normalized;
                    b.speed *= 1.5f; // optional speed boost
                    bullets[i] = b;

                    if (b.visual != null)
                        b.visual.GetComponent<Renderer>().material.color = Color.cyan; // visual feedback
                }
            }
        }
    }

    private Vector3 ClosestPointOnLineSegment(Vector3 a, Vector3 b, Vector3 point)
    {
        Vector3 ab = b - a;
        float t = Vector3.Dot(point - a, ab) / ab.sqrMagnitude;
        t = Mathf.Clamp01(t);
        return a + ab * t;
    }
}
