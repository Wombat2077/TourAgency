﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TourAgency.Models;

public partial class Country
{
    public int Id { get; set; }

    public string Name { get; set; }

    public string Code { get; set; }

    public virtual ICollection<City> Cities { get; set; } = new List<City>();
}