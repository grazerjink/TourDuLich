using System;
using TourDuLich.Data;

namespace TourDuLich.Web.Models
{
    public class KhachHangViewModel
    {
        public int MaKhachHang { get; set; }
        public string HoTen { get; set; }
        public bool GioiTinh { get; set; }
        public DateTime NgaySinh { get; set; }
        public string SoDienThoai { get; set; }
        public string SoChungMinh { get; set; }
        public string CMND { get; set; }
        public string Passport { get; set; }
        public int MaQuocTich { get; set; }
        public string DiaChi { get; set; }
        public bool TrangThai { get; set; }

        public QuocTich QuocTich { get; set; }
    }
}