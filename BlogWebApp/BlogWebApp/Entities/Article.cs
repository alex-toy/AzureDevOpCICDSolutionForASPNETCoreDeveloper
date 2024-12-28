namespace BlogWebApp.Entities;

public class Article
{
    public int Id { get; set; }
    public string ImageUrl { get; set; }
    public string Title { get; set; }
    public string Description { get; set; }
    public DateTime PubDate { get; set; }
    public bool Featured { get; set; }
}