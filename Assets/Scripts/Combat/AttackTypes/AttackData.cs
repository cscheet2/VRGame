using UnityEngine;

[CreateAssetMenu(menuName = "Combat/Attack Data")]
public class AttackData : ScriptableObject
{
    public float damage;
    public bool canBeParried;
    public bool destroyOnParry;
}

