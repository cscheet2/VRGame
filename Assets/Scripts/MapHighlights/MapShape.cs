using UnityEngine;

public enum ShapeType
{
    Circle,
    Box,
    Cone,
    Line
}

public struct MapShape
{
    public int id;

    public ShapeType type;

    public Vector3 position;
    public Quaternion rotation;

    public Vector3 size;
    public Color color;

    public float lifeTime;
    public float maxLifeTime;

    public GameObject visual;
}