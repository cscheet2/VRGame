using System.Collections.Generic;
using UnityEngine;

public class MapShapeVisualPool : MonoBehaviour
{
    public static MapShapeVisualPool Instance { get; private set; }

    [SerializeField] private int defaultPrewarmCount = 16;

    private readonly Dictionary<GameObject, Queue<GameObject>> pools =
        new Dictionary<GameObject, Queue<GameObject>>();

    void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }

        Instance = this;
    }

    public GameObject Spawn(
        GameObject prefab,
        Vector3 position,
        Quaternion rotation)
    {
        if (prefab == null)
        {
            Debug.LogWarning("Trying to spawn null shape prefab.");
            return null;
        }

        if (!pools.TryGetValue(prefab, out var pool))
            pool = CreatePool(prefab);

        if (pool.Count == 0)
            Prewarm(prefab, pool, 1);

        GameObject obj = pool.Dequeue();

        obj.transform.position = position;
        obj.transform.rotation = rotation;
        obj.SetActive(true);

        return obj;
    }

    public void Despawn(GameObject obj, GameObject prefab)
    {
        if (obj == null || prefab == null)
            return;

        obj.SetActive(false);

        if (!pools.TryGetValue(prefab, out var pool))
            pool = CreatePool(prefab);

        pool.Enqueue(obj);
    }

    private Queue<GameObject> CreatePool(GameObject prefab)
    {
        var pool = new Queue<GameObject>();
        pools[prefab] = pool;

        Prewarm(prefab, pool, defaultPrewarmCount);

        return pool;
    }

    private void Prewarm(
        GameObject prefab,
        Queue<GameObject> pool,
        int count)
    {
        for (int i = 0; i < count; i++)
        {
            GameObject obj = Instantiate(prefab, transform);
            obj.SetActive(false);
            pool.Enqueue(obj);
        }
    }
}