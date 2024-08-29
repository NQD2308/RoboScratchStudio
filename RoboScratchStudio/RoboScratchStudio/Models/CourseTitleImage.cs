using System;
using System.Collections.Generic;

namespace RoboScratchStudio.Models;

public partial class CourseTitleImage
{
    public int Id { get; set; }

    public string? ImageTitle { get; set; }

    public int? IdCourse { get; set; }

    public virtual Course? IdCourseNavigation { get; set; }
}
