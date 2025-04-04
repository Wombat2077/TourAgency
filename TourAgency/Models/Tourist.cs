﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TourAgency.Models;

public partial class Tourist
{
    public int Id { get; set; }

    public string Name { get; set; }

    public string Surname { get; set; }

    public string LastName { get; set; }

    public string Passport { get; set; }

    public string Visa { get; set; }

    public int? ClientId { get; set; }

    public virtual Client Client { get; set; }

    public virtual ICollection<Insurance> Insurances { get; set; } = new List<Insurance>();
}