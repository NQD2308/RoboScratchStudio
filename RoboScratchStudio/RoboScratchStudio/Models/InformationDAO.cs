using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore.Metadata.Internal;

namespace RoboScratchStudio.Models
{
    public class InformationDAO
    {
        // ========== Header ========== //
        public List<Course> courseList { get; set; }
        public List<Course> displayCourseByQuantityRequest { get; set; } // Hiển thị số lượng môn học theo yêu cầu
    }
}
