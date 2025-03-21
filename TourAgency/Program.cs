using Microsoft.EntityFrameworkCore;
using TourAgency.Models;


namespace TourAgency
{
	public class Program
	{
		public static void Main(string[] args)
		{
			var builder = WebApplication.CreateBuilder(args);
			builder.Configuration.SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
			// Add services to the container.
			builder.Services.AddControllersWithViews();
			builder.Services.AddCors(options => 
										options.AddPolicy(
												  name: "allowAllPolicy", 
												  policy => 
												  policy
													.AllowAnyOrigin()
													.AllowAnyHeader()
													.SetIsOriginAllowed((host) => true)
													.AllowAnyMethod()
												)
								);

			builder.Services.AddDbContext<TourAgencyContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")
				));
			var app = builder.Build();
			app.UseCors("allowAllPolicy");

			// Configure the HTTP request pipeline.
			if (!app.Environment.IsDevelopment())
			{
				app.UseExceptionHandler("/Home/Error");
				// The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
				app.UseHsts();
			}

			app.UseHttpsRedirection();
			app.UseStaticFiles();

			app.UseRouting();

			app.UseAuthorization();

			app.MapControllerRoute(
				name: "default",
				pattern: "{controller=Home}/{action=Index}/{id?}");

			app.Run();
		}
	}
}
