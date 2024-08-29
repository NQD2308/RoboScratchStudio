using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace RoboScratchStudio.Models;

public partial class RoboScratchStudioContext : DbContext
{
    public RoboScratchStudioContext()
    {
    }

    public RoboScratchStudioContext(DbContextOptions<RoboScratchStudioContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Benefit> Benefits { get; set; }

    public virtual DbSet<Course> Courses { get; set; }

    public virtual DbSet<CourseCategory> CourseCategories { get; set; }

    public virtual DbSet<CourseTitleImage> CourseTitleImages { get; set; }

    public virtual DbSet<Gallery> Galleries { get; set; }

    public virtual DbSet<Pricing> Pricings { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=ADMIN-GK4O6HCO7\\SQLEXPRESS;uid=sa;password=1;database=RoboScratchStudio;Encrypt=true;TrustServerCertificate=true");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Benefit>(entity =>
        {
            entity.ToTable("Benefit");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.BenefitDescription)
                .HasMaxLength(100)
                .HasColumnName("benefit_description");
        });

        modelBuilder.Entity<Course>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK_courses_1");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.AgeRequest)
                .HasMaxLength(50)
                .HasColumnName("age_request");
            entity.Property(e => e.DurationInDay)
                .HasMaxLength(50)
                .HasColumnName("duration_in_day");
            entity.Property(e => e.DurationInWeek)
                .HasMaxLength(50)
                .HasColumnName("duration_in_week");
            entity.Property(e => e.IdCourseCategory).HasColumnName("id_course_category");
            entity.Property(e => e.Name)
                .HasMaxLength(50)
                .HasColumnName("name");
            entity.Property(e => e.Subtext).HasColumnName("subtext");

            entity.HasOne(d => d.IdCourseCategoryNavigation).WithMany(p => p.Courses)
                .HasForeignKey(d => d.IdCourseCategory)
                .HasConstraintName("FK_Courses_Course_Categories");
        });

        modelBuilder.Entity<CourseCategory>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK_Course_Categories_1");

            entity.ToTable("Course_Categories");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Name)
                .HasMaxLength(50)
                .HasColumnName("name");
        });

        modelBuilder.Entity<CourseTitleImage>(entity =>
        {
            entity.ToTable("Course_title_Images");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.IdCourse).HasColumnName("id_course");
            entity.Property(e => e.ImageTitle)
                .IsUnicode(false)
                .HasColumnName("image_title");

            entity.HasOne(d => d.IdCourseNavigation).WithMany(p => p.CourseTitleImages)
                .HasForeignKey(d => d.IdCourse)
                .HasConstraintName("FK_Course_title_Images_Courses");
        });

        modelBuilder.Entity<Gallery>(entity =>
        {
            entity.ToTable("galleries");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.IdCourse).HasColumnName("id_course");
            entity.Property(e => e.IdCourseCategoty).HasColumnName("id_course_categoty");
            entity.Property(e => e.Img)
                .IsUnicode(false)
                .HasColumnName("img");

            entity.HasOne(d => d.IdCourseNavigation).WithMany(p => p.Galleries)
                .HasForeignKey(d => d.IdCourse)
                .HasConstraintName("FK_galleries_courses");

            entity.HasOne(d => d.IdCourseCategotyNavigation).WithMany(p => p.Galleries)
                .HasForeignKey(d => d.IdCourseCategoty)
                .HasConstraintName("FK_galleries_Course_Categories");
        });

        modelBuilder.Entity<Pricing>(entity =>
        {
            entity.ToTable("Pricing");

            entity.Property(e => e.Id).HasColumnName("id");
            entity.Property(e => e.Currency)
                .HasMaxLength(50)
                .HasColumnName("currency");
            entity.Property(e => e.DurationCourse)
                .HasMaxLength(50)
                .HasColumnName("duration_course");
            entity.Property(e => e.IdCategory).HasColumnName("id_category");
            entity.Property(e => e.IdCourse).HasColumnName("id_course");
            entity.Property(e => e.Name)
                .HasMaxLength(50)
                .HasColumnName("name");
            entity.Property(e => e.Price)
                .HasColumnType("money")
                .HasColumnName("price");
            entity.Property(e => e.PricingText)
                .HasMaxLength(50)
                .HasColumnName("pricing_text");
            entity.Property(e => e.Subtext)
                .HasMaxLength(100)
                .HasColumnName("subtext");
            entity.Property(e => e.UserCategory)
                .HasMaxLength(50)
                .HasColumnName("user_category");

            entity.HasOne(d => d.IdCategoryNavigation).WithMany(p => p.Pricings)
                .HasForeignKey(d => d.IdCategory)
                .HasConstraintName("FK_Pricing_Course_Categories1");

            entity.HasOne(d => d.IdCourseNavigation).WithMany(p => p.Pricings)
                .HasForeignKey(d => d.IdCourse)
                .HasConstraintName("FK_Pricing_Courses1");

            entity.HasMany(d => d.IdBenefits).WithMany(p => p.IdPricings)
                .UsingEntity<Dictionary<string, object>>(
                    "PricingBenefit",
                    r => r.HasOne<Benefit>().WithMany()
                        .HasForeignKey("IdBenefit")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK_Pricing_Benefit_Benefit"),
                    l => l.HasOne<Pricing>().WithMany()
                        .HasForeignKey("IdPricing")
                        .OnDelete(DeleteBehavior.ClientSetNull)
                        .HasConstraintName("FK_Pricing_Benefit_Pricing"),
                    j =>
                    {
                        j.HasKey("IdPricing", "IdBenefit");
                        j.ToTable("Pricing_Benefit");
                        j.IndexerProperty<int>("IdPricing").HasColumnName("id_pricing");
                        j.IndexerProperty<int>("IdBenefit").HasColumnName("id_benefit");
                    });
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
