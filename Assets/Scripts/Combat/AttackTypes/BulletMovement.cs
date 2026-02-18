using UnityEngine;

public static class BulletMovement
{
    public static void UpdateMovement(ref Bullet bullet, float dt, float globalTime)
    {
        switch (bullet.movementType)
        {
            case 0: // Straight
                bullet.position += bullet.direction * bullet.speed * dt;
                break;

            case 1: // Sine wave
                bullet.position += bullet.direction * bullet.speed * dt;
                bullet.position += Vector3.right * Mathf.Sin(globalTime * 5f) * dt;
                break;

            case 2: // Spiral
                Vector3 perp = Vector3.Cross(bullet.direction, Vector3.up);
                bullet.position += (bullet.direction + perp * Mathf.Sin(globalTime))
                                   * bullet.speed * dt;
                break;
        }
    }
}
