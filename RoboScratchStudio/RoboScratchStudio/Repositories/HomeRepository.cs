using Microsoft.EntityFrameworkCore;
using RoboScratchStudio.Models;

namespace RoboScratchStudio.Repositories
{
    public interface IHomeRepository
    {
        public List<Course> GetAllcourses();                // Lây tất cả các khóa học
        public List<Course> takeCourses(int quantity);      // Lấy số lượng khóa học theo yêu cầu

        public Course findCourseById(int id);               // Tim mã của khóa học
    }
    public class HomeRepository : IHomeRepository
    {
        private RoboScratchStudioContext _ctx;
        public HomeRepository(RoboScratchStudioContext ctx) { _ctx = ctx; }

        public Course findCourseById(int id)
        {
            // Truy vấn course với tất cả thông tin liên quan
            var course = _ctx.Courses
                .Include(c => c.CourseTitleImages)
                .Include(c => c.Galleries)                              // Bao gồm danh sách Galleries liên quan đến Course
                .Include(c => c.Pricings.OrderBy(p => p.Price))         // Bao gồm danh sách Pricing liên quan đến Course
                    .ThenInclude(p => p.IdBenefits)                     // Lấy các thuộc tính trong bản Pricing benefit thông qua bảng Pricing
                .Include(c => c.Pricings)                               // Bao gồm danh sách Pricing liên quan đến Course
                    .ThenInclude(p => p.IdPricingCategoryNavigation)    // Lấy các thuộc tính trong bản Pricing category thông qua bảng Pricing
                .FirstOrDefault(c => c.Id == id);                       // Lấy Course với id tương ứng

            return course;
        }

        public List<Course> GetAllcourses()
        {
            return _ctx.Courses.Include(c => c.CourseTitleImages).ToList();
        }

        public List<Course> takeCourses(int quantity)
        {
            return _ctx.Courses.Include(c => c.CourseTitleImages).Take(quantity).ToList();
        }
    }
}
