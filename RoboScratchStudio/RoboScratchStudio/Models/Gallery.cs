using System;
using System.Collections.Generic;

namespace RoboScratchStudio.Models;

public partial class Gallery
{
    public int Id { get; set; }

    public string? Img { get; set; }

    public int? IdCourse { get; set; }

    public int? IdCourseCategoty { get; set; }

    public virtual CourseCategory? IdCourseCategotyNavigation { get; set; }

    public virtual Course? IdCourseNavigation { get; set; }
}
