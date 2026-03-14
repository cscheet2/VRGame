using System.Collections.Generic;
using UnityEngine;

public class EnemyPhase : ScriptableObject
{
    [Range(0f, 1f)]
    public float enterAtHealthPercent = 1f;

    [Header("Behavior Tree Root")]
    public BTNodeAsset rootNode;

    [Header("Available Attacks")]
    public List<AttackData> attacks;

    public virtual void OnPhaseEnter(BaseEnemy enemy) { }
    public virtual void OnPhaseExit(BaseEnemy enemy) { }
}