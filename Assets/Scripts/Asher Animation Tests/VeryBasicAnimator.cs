using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using System.Linq;

public class VeryBasicAnimator : MonoBehaviour
{
    public float maxSpeed;
    private float speed;
    public float turnSpeed;
    public float acceleration;
    private float turnSpeedFactor;
    public enum EnState {Idle, Moving, Attack}
    private EnState currentState;
    Animator animator;
    // Start is called before the first frame update
    void Start()
    {
        animator = GetComponent<Animator>();
        StartCoroutine(StateChangerStart(EnState.Moving));
        turnSpeedFactor = 1;
}

    // Update is called once per frame
    void Update()
    {
        transform.Rotate(0, turnSpeed * Time.deltaTime, 0);
        transform.Translate(Vector3.forward * speed * Time.deltaTime);
        turnSpeed += (Random.value - 0.5f) * turnSpeedFactor;
        transform.position = new Vector3(transform.position.x, Mathf.Clamp(transform.position.y, 0, Mathf.Infinity), transform.position.z);
    }

    IEnumerator ChangeState(EnState state)
    {
        currentState = state;
        Debug.Log("speed set to 0");
        Debug.Log("state set to " + currentState);
        speed = 0;
        
        if(currentState == EnState.Moving)
        {
            animator.SetBool("IsMoving", true);
            turnSpeedFactor = 1;
            turnSpeed = 40;
        } else
        {
            animator.SetBool("IsMoving", false);
            turnSpeedFactor = 0;
            turnSpeed = 0;
        }
        if (currentState == EnState.Attack)
        {
            animator.SetBool("IsAttacking", true);
        } else
        {
            animator.SetBool("IsAttacking", false);
        }
        while (speed < maxSpeed && currentState == EnState.Moving)
        {
            speed += acceleration;
            Debug.Log("speed added");
            yield return null;
        }
    }

    IEnumerator StateChangerStart(EnState state)
    {
        EnState newState;
        StartCoroutine(ChangeState(state));
        while (true)
        {
            Debug.Log("hello");
            yield return new WaitForSeconds(Random.value * 3 + 3);
            newState = (EnState)Random.Range(0, System.Enum.GetValues(typeof(EnState)).Length);
            StartCoroutine(ChangeState(newState));
            Debug.Log(newState);
        }
    }

    public void TestEventFunction(EnState state)
    {
        Debug.Log("Method called from event. State: " + state);   
    }
}
