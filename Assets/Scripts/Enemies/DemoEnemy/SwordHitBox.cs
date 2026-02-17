using UnityEngine;

public class SwordHitbox : MonoBehaviour
{
    Collider col;

    void Awake()
    {
        col = GetComponent<Collider>();
        col.enabled = false;
    }

    // Called via Animation Event
    public void EnableHitbox()
    {
        col.enabled = true;
    }

    public void DisableHitbox()
    {
        col.enabled = false;
    }
}
