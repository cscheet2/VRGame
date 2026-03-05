using UnityEngine;

public abstract class BTNodeAsset : ScriptableObject
{
    public abstract BTNode CreateNode(BaseEnemy enemy);
}