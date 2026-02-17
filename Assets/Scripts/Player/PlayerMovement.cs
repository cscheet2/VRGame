using UnityEngine;
using Valve.VR;

public class PlayerMovement : MonoBehaviour
{
    public SteamVR_Action_Vector2 moveAction;
    public SteamVR_Input_Sources inputSource = SteamVR_Input_Sources.LeftHand;

    public float moveSpeed = 2f;
    public Transform head; // assign Main Camera (VR headset)

    void Update()
    {
        Vector2 input = moveAction.GetAxis(inputSource);

        if (input.magnitude > 0.1f)
        {
            // Get headset forward direction
            Vector3 forward = head.forward;
            Vector3 right = head.right;

            forward.y = 0;
            right.y = 0;

            forward.Normalize();
            right.Normalize();

            Vector3 direction = forward * input.y + right * input.x;
            transform.position += direction * moveSpeed * Time.deltaTime;
        }
    }
}