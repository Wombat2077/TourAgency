using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using TourAgency.Models;

namespace TourAgency.Controllers
{
    public class ToursController : Controller
    {
        private readonly TourAgencyContext _context;

        public ToursController(TourAgencyContext context)
        {
            _context = context;
        }
        [HttpPost]
        public async Task<IActionResult> getTours()
        {
            var data = _context.Tours;
            Request.Query.FirstOrDefault();
            return Json(data);
        }
    }
        
}
