﻿using Microsoft.EntityFrameworkCore;
using RoboScratchStudio.Models;

namespace RoboScratchStudio.Repositories
{
    public interface IHomeRepository
    {
        public List<Course> GetAllcourses();

        public Course findCourseById(int id);
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
                .Include(c => c.Galleries) // Bao gồm danh sách Galleries liên quan đến Course
                .Include(c => c.Pricings.OrderBy(p => p.Price)) // Bao gồm danh sách Pricing liên quan đến Course
                .FirstOrDefault(c => c.Id == id); // Lấy Course với id tương ứng

            return course;
        }

        public List<Course> GetAllcourses()
        {
            return _ctx.Courses.Include(c => c.CourseTitleImages).ToList();
        }
    }
}