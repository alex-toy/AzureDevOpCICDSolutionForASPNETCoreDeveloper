using BlogWebApp.Entities;
using Microsoft.EntityFrameworkCore;

namespace BlogWebApp.Repo;

public class ApplicationDbContext : DbContext
{
    public ApplicationDbContext(DbContextOptions<ApplicationDbContext> options) : base(options) { }

    protected override void OnModelCreating(ModelBuilder builder)
    {
        base.OnModelCreating(builder);
    }

    public DbSet<Article> Articles { get; set; }
}
