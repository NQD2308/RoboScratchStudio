using System;
using System.Collections.Generic;

namespace RoboScratchStudio.Models;

public partial class CourseCategory
{
    public int Id { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<Course> Courses { get; set; } = new List<Course>();

    public virtual ICollection<Gallery> Galleries { get; set; } = new List<Gallery>();

    public virtual ICollection<Pricing> Pricings { get; set; } = new List<Pricing>();
}
