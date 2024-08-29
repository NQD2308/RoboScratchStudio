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

            return View("Detail", course);
        }
    }
}
