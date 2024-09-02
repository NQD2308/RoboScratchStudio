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
            InformationDAO m = new InformationDAO();
            m.courseList = _homeRepository.GetAllcourses();     // Hiển thị toàn bộ các khóa học
            m.displayCourseByQuantityRequest = _homeRepository.takeCourses(4); // Hiển thị 4 khóa học

            return View(m);
        }
        public IActionResult Pricing()
        {
            InformationDAO m = new InformationDAO();       
            m.displayCourseByQuantityRequest = _homeRepository.takeCourses(4); // Hiển thị 4 khóa học

            return View(m);
        }
        public IActionResult Contact()
        {
            InformationDAO m = new InformationDAO();        
            m.displayCourseByQuantityRequest = _homeRepository.takeCourses(4); // Hiển thị 4 khóa học

            return View(m);
        }

        public IActionResult Privacy()
        {
            InformationDAO m = new InformationDAO();        
            m.displayCourseByQuantityRequest = _homeRepository.takeCourses(4); // Hiển thị 4 khóa học

            return View(m);
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
