using Microsoft.AspNetCore.Mvc;
using RoboScratchStudio.Models;
using RoboScratchStudio.Repositories;
using System.Diagnostics;

namespace RoboScratchStudio.Controllers
{
    public class HomeController : Controller
    {
        private RoboScratchStudioContext _ctx;

        private readonly ILogger<HomeController> _logger;
        private IHomeRepository _homeRepository;

        public HomeController(ILogger<HomeController> logger,
                                RoboScratchStudioContext ctx,
                                IHomeRepository homeRepository)
        {
            _logger = logger;
            _ctx = ctx;
            _homeRepository = homeRepository;
        }

        public IActionResult Index()
        {
            List<Course> courses = _homeRepository.GetAllcourses();
            return View(courses);
        }
        public IActionResult Pricing()
        {
            return View();
        }
        public IActionResult Contact()
        {
            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        public IActionResult ErrorPage()
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
