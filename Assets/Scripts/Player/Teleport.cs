using UnityEngine;

public class SteamVRTeleport : MonoBehaviour
{
    public Transform player;        // Drag the top "Player" object here
    public Transform teleportPoint; // Drag Platform_2 here

    private void OnTriggerEnter(Collider other)
    {
        if (other.transform.root == player)
        {
            // Calculate headset offset
            Vector3 headOffset = player.position - Camera.main.transform.position;

            player.position = teleportPoint.position + headOffset;
        }
    }
}