using System.Collections.Generic;
using UnityEngine;

public class MapHighlightManager : MonoBehaviour, IMapShapeRenderer
{
    public static MapHighlightManager Instance;

    private readonly List<MapShape> shapes = new List<MapShape>();
    private int nextId = 0;

    void Awake()
    {
        Instance = this;
    }

    void Update()
    {
        float dt = Time.deltaTime;

        for (int i = shapes.Count - 1; i >= 0; i--)
        {
            MapShape s = shapes[i];

            s.lifeTime += dt;

            if (s.visual != null)
                UpdateVisual(ref s);

            if (s.lifeTime >= s.maxLifeTime)
            {
                DespawnVisual(s);
                shapes.RemoveAt(i);
                continue;
            }

            shapes[i] = s;
        }
    }

    public void CreateShape(MapShape shape)
    {
        shape.id = nextId++;
        shape.lifeTime = 0f;

        shape.visual = MapShapeVisualPool.Instance.Spawn(
            shape.visual,
            shape.position,
            shape.rotation
        );

        shapes.Add(shape);
    }

    public void RemoveShape(int id)
    {
        for (int i = 0; i < shapes.Count; i++)
        {
            if (shapes[i].id == id)
            {
                DespawnVisual(shapes[i]);
                shapes.RemoveAt(i);
                return;
            }
        }
    }

    public void ClearAll()
    {
        for (int i = 0; i < shapes.Count; i++)
            DespawnVisual(shapes[i]);

        shapes.Clear();
    }

    void UpdateVisual(ref MapShape s)
    {
        Transform t = s.visual.transform;

        t.position = s.position;
        t.rotation = s.rotation;
        t.localScale = s.size;

        var renderer = t.GetComponent<Renderer>();
        if (renderer != null)
            renderer.material.color = s.color;
    }

    void DespawnVisual(MapShape s)
    {
        if (s.visual != null)
            MapShapeVisualPool.Instance.Despawn(s.visual, s.visual);
    }

}