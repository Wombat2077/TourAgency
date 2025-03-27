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
        public async Task<IActionResult> getTours
            (
                [FromBody] DateTime startDate,
                [FromBody] DateTime endDate,
                [FromBody] int dayCount,
                [FromBody] int peopleCount,
                [FromBody] bool hasChildren,
                [FromBody] List<int> preferredTypes,


            )
        {
            var data = _context.Tours.ToList();
            //Main information
            data = data
                     .Where(item => item.StartDate <= DateTime.Parse(Request?.Query["startDate"] ?? ""))
                     .Where(item => item.EndDate <= DateTime.Parse(Request?.Query["endDate"] ?? "" ))
                     .Where(item =>
                     {
                         TimeSpan? span = item.EndDate - item.StartDate;
                         if(span == null)
                         {
                             return true;
                         }
                         return span?.Days == dayCount;
                     })
                     .Where(item => item.MaxPeopleCount <= peopleCount)
                     .OrderBy(item =>
                     {
                         var score = 0;
                         for(int i = 0; i < preferredTypes.Count; i++)
                         {
                             if(item.TourTypesToTours.Where(type => type.TypeId == preferredTypes[i]).FirstOrDefault() != null){
                                 score += preferredTypes.Count() - i;
                             }
                         }
                         return score;
                     })
                     .Where(item => item.HotelsByTours.Where(hotel => hotel.))
                     .ToList();
            return Json(data);
        }
        
    }
        
}
