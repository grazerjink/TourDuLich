﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TourDuLich.Data
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class TourDuLichEntities : DbContext
    {
        public TourDuLichEntities()
            : base("name=TourDuLichEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<BangDangKy> BangDangKies { get; set; }
        public virtual DbSet<ChiPhiAnUong> ChiPhiAnUongs { get; set; }
        public virtual DbSet<ChiPhiKhachSan> ChiPhiKhachSans { get; set; }
        public virtual DbSet<ChiPhiPhatSinh> ChiPhiPhatSinhs { get; set; }
        public virtual DbSet<ChiPhiPhuongTien> ChiPhiPhuongTiens { get; set; }
        public virtual DbSet<ChiTietDiaDiem> ChiTietDiaDiems { get; set; }
        public virtual DbSet<DiaDiem> DiaDiems { get; set; }
        public virtual DbSet<DoanDuLich> DoanDuLiches { get; set; }
        public virtual DbSet<GiaTour> GiaTours { get; set; }
        public virtual DbSet<KhachHang> KhachHangs { get; set; }
        public virtual DbSet<LichTrinh> LichTrinhs { get; set; }
        public virtual DbSet<LoaiHinhDuLich> LoaiHinhDuLiches { get; set; }
        public virtual DbSet<NhanVien> NhanViens { get; set; }
        public virtual DbSet<NhiemVu> NhiemVus { get; set; }
        public virtual DbSet<PhanCong> PhanCongs { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<ThoiGianTour> ThoiGianTours { get; set; }
        public virtual DbSet<TinhThanh> TinhThanhs { get; set; }
        public virtual DbSet<Tour> Tours { get; set; }
        public virtual DbSet<TourDiemThamQuan> TourDiemThamQuans { get; set; }
    }
}