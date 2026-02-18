using UnityEngine;

/**
 * Auto-setup blade tip and base
 * Works for any sword orientation
 */
public class BladeAutoSetup : MonoBehaviour
{
    public Transform bladeBase;
    public Transform bladeTip;

    void Awake()
    {
        AutoPlaceBladePoints();
    }

    void AutoPlaceBladePoints()
    {
        MeshFilter mf = GetComponentInChildren<MeshFilter>();
        if (mf == null)
        {
            Debug.LogWarning("No MeshFilter found for BladeAutoSetup");
            return;
        }

        Mesh mesh = mf.sharedMesh;
        Bounds bounds = mesh.bounds;

        // Create base object if missing
        if (bladeBase == null)
        {
            bladeBase = new GameObject("BladeBase").transform;
            bladeBase.parent = mf.transform;
        }

        // Create tip object if missing
        if (bladeTip == null)
        {
            bladeTip = new GameObject("BladeTip").transform;
            bladeTip.parent = mf.transform;
        }

        // Compute blade direction in local space
        Vector3 localDir = Vector3.up; // default direction along Y
        if (bounds.size.y > bounds.size.x && bounds.size.y > bounds.size.z)
            localDir = Vector3.up;    // tall along Y
        else if (bounds.size.z > bounds.size.x)
            localDir = Vector3.forward;
        else
            localDir = Vector3.right;

        // Place base and tip at ends along the longest axis
        bladeBase.localPosition = bounds.center - localDir * bounds.extents[GetLongestAxis(bounds)];
        bladeTip.localPosition = bounds.center + localDir * bounds.extents[GetLongestAxis(bounds)];
    }

    int GetLongestAxis(Bounds b)
    {
        Vector3 size = b.size;
        if (size.x >= size.y && size.x >= size.z) return 0;
        if (size.y >= size.x && size.y >= size.z) return 1;
        return 2;
    }
}
