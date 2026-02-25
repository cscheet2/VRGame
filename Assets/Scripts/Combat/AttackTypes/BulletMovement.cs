using UnityEngine;

public static class BulletMovement
{
    public static void UpdateMovement(ref Bullet bullet, float dt, float globalTime)
    {
        // Use per-bullet time so motion isn't globally synced
        float t = globalTime - bullet.spawnTime;

        switch (bullet.movementType)
        {
            case BulletMovementType.Straight:
                {
                    bullet.position += bullet.direction * bullet.speed * dt;
                    break;
                }

            case BulletMovementType.Sine:
                {
                    // Forward movement
                    bullet.position += bullet.direction * bullet.speed * dt;

                    // Perpendicular relative to movement direction
                    Vector3 perp = GetPerpendicular(bullet.direction);

                    float sine = Mathf.Sin(t * 5f); // frequency = 5
                    bullet.position += perp * sine * dt * bullet.speed;

                    break;
                }

            case BulletMovementType.Spiral:
                {
                    Vector3 perp = GetPerpendicular(bullet.direction);

                    float spiral = Mathf.Sin(t * 6f); // spiral speed
                    Vector3 offsetDir = (bullet.direction + perp * spiral).normalized;

                    bullet.position += offsetDir * bullet.speed * dt;

                    break;
                }
        }
    }

    private static Vector3 GetPerpendicular(Vector3 direction)
    {
        // Try world up first
        Vector3 perp = Vector3.Cross(direction, Vector3.up);

        // If parallel, fallback axis
        if (perp.sqrMagnitude < 0.0001f)
            perp = Vector3.Cross(direction, Vector3.forward);

        return perp.normalized;
    }
}