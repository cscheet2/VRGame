using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu(menuName = "Combat/Enemy Phase")]
public class EnemyPhase : ScriptableObject
{
    [Range(0f, 1f)]
    public float enterAtHealthPercent = 1f;

    [Header("Behavior Tree Root")]
    public BTNodeAsset rootNode;

    [Header("Available Attacks")]
    public List<AttackData> attacks;
}