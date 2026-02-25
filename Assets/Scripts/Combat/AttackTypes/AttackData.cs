using UnityEngine;

[CreateAssetMenu(menuName = "Combat/Attack Data")]
public class AttackData : ScriptableObject
{
    [Header("Stats")]
    public float damage;
    public float speed;
    public float maxLifetime;

    [Header("Visuals")]
    public GameObject visualPrefab;    // actual attack object
    public GameObject warningPrefab;   // telegraph visual (warning)

    [Header("Timing")]
    public float warningDuration = 0.5f;
    public float startupDuration = 0.2f;
    public float activeDuration = 0.5f;
    public float recoveryDuration = 0.3f;

    [Header("Behavior")]
    public AttackBehavior behaviorPrefab; // ScriptableObject asset implementing AttackBehavior

    // Runtime instance (not stored in the asset)
    [HideInInspector] public AttackBehavior behaviorInstance;

    // Call this when spawning the attack
    public void InitializeBehavior()
    {
        if (behaviorPrefab != null)
        {
            behaviorInstance = Object.Instantiate(behaviorPrefab);
        }
    }
}