using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayGame : MonoBehaviour
{
    public void StartGame()
    {
        SceneManager.LoadScene(1);
        Debug.Log("Button clicked :O");
    }

    public void QuitGame()
    {
        Application.Quit();
        Debug.Log("Goodbye forever.");
    }
}