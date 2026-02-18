using UnityEngine;

public class PlayerHealth : MonoBehaviour
{
    public static PlayerHealth Instance;

    public float health = 100f;

    private void Awake()
    {
        Instance = this;
    }

    public void TakeDamage(float amount)
    {
        health -= amount;

        if (health <= 0f)
        {
            Debug.Log("Player Dead");
        }
    }
}
