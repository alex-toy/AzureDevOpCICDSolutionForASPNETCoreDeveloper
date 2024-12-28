using BlogWebApp.Entities;

namespace BlogWebApp.Models;

public class IndexModel
{
    public IEnumerable<Article> Articles { get; set; }
}
