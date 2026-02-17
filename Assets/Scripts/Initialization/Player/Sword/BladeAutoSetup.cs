using UnityEngine;

/**
 * Script used for finding the edge and tip of the blade
 * so we don't need to eyeball it
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
        if (mf == null) return;

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

        // Assuming blade points along local Y axis
        bladeBase.localPosition = new Vector3(0, bounds.min.y, 0);
        bladeTip.localPosition = new Vector3(0, bounds.max.y, 0);
    }
}
