using System;
using System.Collections.Generic;

namespace RoboScratchStudio.Models;

public partial class Pricing
{
    public int Id { get; set; }

    public string? PricingText { get; set; }

    public string? Name { get; set; }

    public string? Subtext { get; set; }

    public string? Currency { get; set; }

    public decimal? Price { get; set; }

    public string? UserCategory { get; set; }

    public string? DurationCourse { get; set; }

    public int? IdCategory { get; set; }

    public int? IdCourse { get; set; }

    public int? IdPricingCategory { get; set; }

    public virtual CourseCategory? IdCategoryNavigation { get; set; }

    public virtual Course? IdCourseNavigation { get; set; }

    public virtual PricingCategory? IdPricingCategoryNavigation { get; set; }

    public virtual ICollection<Benefit> IdBenefits { get; set; } = new List<Benefit>();
}
