using TourDuLich.Data;
using TourDuLich.Web.Models;

namespace TourDuLich.Web.Extensions
{
    public static class EntityExtension
    {
        public static void UpdateKhachHang(this KhachHang khachHang, KhachHangViewModel viewModel)
        {
            if (viewModel.SoChungMinh.Contains("B"))
                khachHang.Passport = viewModel.SoChungMinh;
            else
                khachHang.CMND = viewModel.SoChungMinh;

            khachHang.MaKhachHang = viewModel.MaKhachHang;
            khachHang.HoTen = viewModel.HoTen;
            khachHang.GioiTinh = viewModel.GioiTinh;
            khachHang.DiaChi = viewModel.DiaChi;
            khachHang.MaQuocTich = viewModel.MaQuocTich;
            khachHang.NgaySinh = viewModel.NgaySinh;
            khachHang.SoDienThoai = viewModel.SoDienThoai;
            khachHang.TenCongTy = viewModel.TenCongTy;
            khachHang.TrangThai = viewModel.TrangThai;
        }
    }
}