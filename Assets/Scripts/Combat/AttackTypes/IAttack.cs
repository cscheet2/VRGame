using UnityEngine;

public interface IAttack
{
    float Damage { get; }
    bool CanBeParried { get; }
    GameObject Owner { get; }
}
