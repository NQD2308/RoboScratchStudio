using System;
using System.Collections.Generic;

namespace RoboScratchStudio.Models;

public partial class Benefit
{
    public int Id { get; set; }

    public string? BenefitDescription { get; set; }

    public virtual ICollection<Pricing> IdPricings { get; set; } = new List<Pricing>();
}
