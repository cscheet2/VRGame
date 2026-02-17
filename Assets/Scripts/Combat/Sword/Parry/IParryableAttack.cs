public interface IParryableAttack
{
    bool CanBeParried();
    void OnParried(ParryContext context);
}
