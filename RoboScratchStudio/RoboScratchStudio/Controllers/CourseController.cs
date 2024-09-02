using Microsoft.AspNetCore.Mvc;
using RoboScratchStudio.Models;
using RoboScratchStudio.Repositories;

namespace RoboScratchStudio.Controllers
{
    public class CourseController : Controller
    {
        private RoboScratchStudioContext _ctx;

        private readonly ILogger<HomeController> _logger;
        private IHomeRepository _homeRepository;

        public CourseController(RoboScratchStudioContext ctx, ILogger<HomeController> logger, IHomeRepository homeRepository)
        {
            _ctx = ctx;
            _logger = logger;
            _homeRepository = homeRepository;
        }

        public IActionResult Detail(int Id)
        {
            var course = _homeRepository.findCourseById(Id);

            InformationDAO m = new InformationDAO();
            m.displayCourseByQuantityRequest = _homeRepository.takeCourses(4); // Hiển thị 4 khóa học

            ViewBag.Header = m;

            return View("Detail", course);
        }
    }
}
