using Microsoft.EntityFrameworkCore;
using RoboScratchStudio.Models;
using RoboScratchStudio.Repositories;

namespace RoboScratchStudio
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            // Add services to the container.
            builder.Services.AddControllersWithViews();

            //Dependency Injection
            builder.Services.AddDbContext<RoboScratchStudioContext>(options =>
            {
                options.UseSqlServer(builder.Configuration.GetConnectionString("RoboScratchStudio"));
            });

            //DI
            builder.Services.AddTransient<IHomeRepository, HomeRepository>();
            builder.Services.AddTransient<IDetailCourseRepository, DetailCourseRepository>();

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (!app.Environment.IsDevelopment())
            {
                app.UseExceptionHandler("/Home/Error");
            }
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

// Scaffold-DBContext "Server=ADMIN-GK4O6HCO7\SQLEXPRESS;uid=sa;password=1;database=RoboScratchStudio;Encrypt=true;TrustServerCertificate=true" Microsoft.EntityFrameWorkCore.SqlServer -OutputDir Models -f 