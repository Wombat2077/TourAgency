using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
//using System.Data.Entity;
using TourAgency.Models;
namespace TourAgency.Controllers
{
	public class TourTypesController : Controller
	{
		private readonly TourAgencyContext _context;
		public TourTypesController(TourAgencyContext context) 
		{
			_context = context;
		}
		public async Task<IActionResult> getTypes()
		{
			return Json(await _context.TourTypes.ToListAsync());	
		}
	}
}
