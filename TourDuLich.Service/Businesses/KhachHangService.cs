using System.Collections.Generic;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface IKhachHangService
    {
        ResultState LuuThongTinKhachHang(KhachHang khachHang);

        ResultState DangKyTourDuLich(List<KhachHang> dsKhachHang, ThoiGianTour thoiGianTour);
    }

    public class KhachHangService : IKhachHangService
    {
        private IKhachHangRepository khachHangRepository;
        private IBangDangKyRepository bangDangKyRepository;
        private IQuocTichRepository quocTichRepository;
        private IUnitOfWork unitOfWork;

        public KhachHangService(IKhachHangRepository khachHangRepository,
                                IBangDangKyRepository bangDangKyRepository,
                                IQuocTichRepository quocTichRepository,
                                IUnitOfWork unitOfWork)
        {
            this.khachHangRepository = khachHangRepository;
            this.bangDangKyRepository = bangDangKyRepository;
            this.quocTichRepository = quocTichRepository;
            this.unitOfWork = unitOfWork;
        }

        public ResultState LuuThongTinKhachHang(KhachHang khachHang)
        {
            bool success = false;
            string message = "";
            var tonTai = khachHangRepository.GetSingleByCondition(x => x.CMND == khachHang.CMND && x.Passport == khachHang.Passport, new string[] { "QuocTich" });
            if (tonTai == null)
            {
                khachHangRepository.Add(khachHang);
                SaveChange();
                khachHang.QuocTich = quocTichRepository.GetSingleById((int)khachHang.MaQuocTich);
                success = true;
                message = "Đã lưu thông tin thành công.";
                return new ResultState(success, message, khachHang);
            }
            else
            {
                tonTai.HoTen = khachHang.HoTen;
                tonTai.GioiTinh = khachHang.GioiTinh;
                tonTai.DiaChi = khachHang.DiaChi;
                tonTai.MaQuocTich = khachHang.MaQuocTich;
                tonTai.NgaySinh = khachHang.NgaySinh;
                tonTai.TenCongTy = khachHang.TenCongTy;
                tonTai.SoDienThoai = khachHang.SoDienThoai;
                tonTai.Passport = khachHang.Passport;
                tonTai.CMND = khachHang.CMND;
                khachHangRepository.Update(tonTai);
                SaveChange();
                success = true;
                message = "Đã lưu thông tin thành công.";
                return new ResultState(success, message, tonTai);
            }
        }

        public ResultState DangKyTourDuLich(List<KhachHang> dsKhachHang, ThoiGianTour thoiGianTour)
        {
            try
            {
                if (dsKhachHang.Count > 0)
                {
                    dsKhachHang.ForEach(kh =>
                    {
                        var bangDangKy = new BangDangKy
                        {
                            MaKhachHang = kh.MaKhachHang,
                            MaThoiGian = thoiGianTour.MaThoiGianTour
                        };
                        bangDangKyRepository.Add(bangDangKy);
                    });
                    SaveChange();
                    return new ResultState(true, "Đăng ký tour thành công.");
                }
                else
                {
                    return new ResultState(false, "Chưa có danh sách khách hàng, vui lòng nhập thông tin");
                }
            }
            catch
            {
                return new ResultState(false, "Xảy ra lỗi hệ thống, vui lòng thử lại sau.");
            }
        }

        public void SaveChange()
        {
            unitOfWork.Commit();
        }
    }
}