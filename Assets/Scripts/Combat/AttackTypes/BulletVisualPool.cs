using System.Collections.Generic;
using UnityEngine;

public class BulletVisualPool : MonoBehaviour
{
    public static BulletVisualPool Instance { get; private set; }

    [SerializeField] private int defaultPrewarmCount = 32;

    // One pool per prefab
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

    // ===============================
    // SPAWN
    // ===============================

    public GameObject Spawn(
        GameObject prefab,
        Vector3 position,
        Vector3 direction)
    {
        if (prefab == null)
        {
            Debug.LogWarning("Trying to spawn null prefab.");
            return null;
        }

        if (!pools.TryGetValue(prefab, out var pool))
        {
            pool = CreatePool(prefab);
        }

        if (pool.Count == 0)
        {
            // Expand pool dynamically
            Prewarm(prefab, pool, 1);
        }

        GameObject obj = pool.Dequeue();

        obj.transform.position = position;
        obj.transform.forward = direction;
        obj.SetActive(true);

        return obj;
    }

    // ===============================
    // DESPAWN
    // ===============================

    public void Despawn(GameObject obj, GameObject prefab)
    {
        if (obj == null || prefab == null)
            return;

        obj.SetActive(false);

        if (!pools.TryGetValue(prefab, out var pool))
        {
            pool = CreatePool(prefab);
        }

        pool.Enqueue(obj);
    }

    // ===============================
    // INTERNAL
    // ===============================

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