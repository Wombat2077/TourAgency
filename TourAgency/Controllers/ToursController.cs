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
                [FromBody] int hotelStars,
                [FromBody] List<int> Services,
                [FromBody] int FoodTypeId,
                [FromBody] decimal minCost,
                [FromBody] decimal maxCost

            )
        {
            var data = _context.Tours.ToList();
            //Main information
            data = data
                     .Where(item => item.StartDate <= startDate)
                     .Where(item => item.EndDate <= endDate)
                     .Where(item =>
                     {
                         TimeSpan span = item.EndDate - item.StartDate;
                         return span.Days <= dayCount;
                     })
                     .Where(item => item.MaxPeopleCount <= peopleCount)
                     
                     .Where(item =>
                                item.Hotels.Where(h => h.Rating >= hotelStars)
                                           .Where(h => h.FoodTypes.Where(ft => ft.Id == FoodTypeId).Count() > 0)
                                .Count() > 0
                            )
                     .Where(item => item.Services.Where(item => Services.Contains(item.Id)).Count() > 0)
                     .Where(item => item.Cost >= minCost && item.Cost <= maxCost)
					 .OrderBy(item =>
					 {
						 var score = 0;
						 for (int i = 0; i < preferredTypes.Count; i++)
						 {
							 if (item.TourTypesToTours.Where(type => type.TypeId == preferredTypes[i]).FirstOrDefault() != null)
							 {
								 score += preferredTypes.Count() - i;
							 }
						 }
						 return score;
					 })
					 .ToList();
            return Json(data);
        }
        
    }
        
}
