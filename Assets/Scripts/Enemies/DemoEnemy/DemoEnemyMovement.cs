using UnityEngine;

public class DemoEnemyMovement : MonoBehaviour
{
    public float moveSpeed = 3f;
    Transform player;

    void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player").transform;
    }

    void Update()
    {
        if (player == null) return;

        // Face the player
        transform.LookAt(player);

        // Move toward the player
        transform.position += transform.forward * moveSpeed * Time.deltaTime;
    }
}
