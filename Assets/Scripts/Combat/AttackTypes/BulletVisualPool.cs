using System.Collections.Generic;
using UnityEngine;

public class BulletVisualPool : MonoBehaviour
{
    public static BulletVisualPool Instance { get; private set; }

    public GameObject bulletPrefab;
    public int poolSize = 200;

    private Queue<GameObject> pool = new Queue<GameObject>();

    void Awake()
    {
        if (Instance != null && Instance != this)
        {
            Destroy(gameObject);
            return;
        }
        Instance = this;

        for (int i = 0; i < poolSize; i++)
        {
            GameObject obj = Instantiate(bulletPrefab, transform);
            obj.SetActive(false);
            pool.Enqueue(obj);
        }
    }

    public GameObject Spawn(Vector3 position, Vector3 direction)
    {
        if (pool.Count == 0)
            return null;

        GameObject obj = pool.Dequeue();
        obj.transform.position = position;
        obj.transform.forward = direction;
        obj.SetActive(true);
        return obj;
    }

    public void Despawn(GameObject obj)
    {
        obj.SetActive(false);
        pool.Enqueue(obj);
    }
}
