﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace TourAgency.Models;

public partial class Insurance
{
    public int Id { get; set; }

    public int TouristId { get; set; }

    public int? InsuranceTypeId { get; set; }

    public virtual InsuranceType InsuranceType { get; set; }

    public virtual Tourist Tourist { get; set; }
}