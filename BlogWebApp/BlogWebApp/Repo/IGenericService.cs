namespace BlogWebApp.Repo;

public interface IGenericService<T>
{
    Task<IEnumerable<T>> GetAllAsync();
}
