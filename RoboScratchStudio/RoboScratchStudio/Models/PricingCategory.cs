using System;
using System.Collections.Generic;

namespace RoboScratchStudio.Models;

public partial class PricingCategory
{
    public int Id { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<Pricing> Pricings { get; set; } = new List<Pricing>();
}
