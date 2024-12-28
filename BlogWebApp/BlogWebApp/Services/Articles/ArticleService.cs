using BlogWebApp.Entities;
using BlogWebApp.Repo;
using Microsoft.EntityFrameworkCore;

namespace BlogWebApp.Services.Articles;

public class ArticleService : IArticleService
{
    private readonly ApplicationDbContext _context;

    public ArticleService(ApplicationDbContext context)
    {
        _context = context;
    }

    public async Task<IEnumerable<Article>> GetAllAsync()
    {
        return await _context.Articles.ToListAsync();
    }
}
