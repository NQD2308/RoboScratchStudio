using System;
using System.Collections.Generic;

namespace RoboScratchStudio.Models;

public partial class Course
{
    public int Id { get; set; }

    public string? Name { get; set; }

    public string? Subtext { get; set; }

    public string? AgeRequest { get; set; }

    public string? DurationInWeek { get; set; }

    public string? DurationInDay { get; set; }

    public int? IdCourseCategory { get; set; }

    public virtual ICollection<CourseTitleImage> CourseTitleImages { get; set; } = new List<CourseTitleImage>();

    public virtual ICollection<Gallery> Galleries { get; set; } = new List<Gallery>();

    public virtual CourseCategory? IdCourseCategoryNavigation { get; set; }

    public virtual ICollection<Pricing> Pricings { get; set; } = new List<Pricing>();
}
