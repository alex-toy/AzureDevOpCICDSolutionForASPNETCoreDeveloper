using BlogWebApp.Models;
using Microsoft.AspNetCore.Mvc;
using System.Diagnostics;

namespace BlogWebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;
        private readonly IConfiguration _configuration;

        public HomeController(ILogger<HomeController> logger, IConfiguration configuration)
        {
            _logger = logger;
            _configuration = configuration;
        }

        public IActionResult Index()
        {
            ViewBag.Environment = _configuration["ASPNETCORE_ENVIRONMENT"];
            ViewBag.Custom = _configuration["Custom"];
            ViewBag.SubTitle = _configuration.GetSection("SubTitle").Value;
            ViewBag.FooterTitle = _configuration.GetSection("FooterTitle").Value;
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
    }
}
