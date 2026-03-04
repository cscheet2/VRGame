public interface IMapShapeRenderer
{
    void CreateShape(MapShape shape);
    void RemoveShape(int id);
    void ClearAll();
}