using System;
using System.Collections.Generic;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;
using System.Linq;

namespace TourDuLich.Service.Businesses
{
    public interface IDoanDuLichService
    {
        List<BangDangKy> GetAllListCheckIn();
        IEnumerable<object> GetAllListGroupTourByTime(int MaThoiGianTour);
        ResultState TaoDoanDuLich(DoanDuLich doanDuLich, List<BangDangKy> dsDangKy, Dictionary<string,string> dsNhanVien);
    }

    public class DoanDuLichService : IDoanDuLichService
    {
        private IBangDangKyRepository bangDangKyRepository;
        private IQuocTichRepository quocTichRepository;
        private ITourRepository tourRepository;
        private IDoanDuLichRepository doanDuLichRepository;
        private IPhanCongRepository phanCongRepository;
        private INhanVienRepository nhanVienRepository;
        private INhiemVuRepository nhiemVuRepository;
        private IUnitOfWork unitOfWork;

        public DoanDuLichService(IBangDangKyRepository bangDangKyRepository,
                                IQuocTichRepository quocTichRepository,
                                ITourRepository tourRepository,
                                IDoanDuLichRepository doanDuLichRepository,
                                IPhanCongRepository phanCongRepository,
                                INhanVienRepository nhanVienRepository,
                                INhiemVuRepository nhiemVuRepository,
                                IUnitOfWork unitOfWork)
        {
            this.bangDangKyRepository = bangDangKyRepository;
            this.tourRepository = tourRepository;
            this.quocTichRepository = quocTichRepository;
            this.doanDuLichRepository = doanDuLichRepository;
            this.phanCongRepository = phanCongRepository;
            this.nhanVienRepository = nhanVienRepository;
            this.nhiemVuRepository = nhiemVuRepository;
            this.unitOfWork = unitOfWork;
        }

        public List<BangDangKy> GetAllListCheckIn()
        {
            var dsDangKy = bangDangKyRepository.GetMulti(x => x.MaDoanDuLich == null && x.ThoiGianTour.NgayDi >= DateTime.Now, new string[] { "KhachHang", "ThoiGianTour" }).ToList();
            dsDangKy.ForEach(x =>
            {
                x.KhachHang.QuocTich = quocTichRepository.GetSingleByCondition(qt => qt.MaQuocTich == x.KhachHang.MaQuocTich);
                x.ThoiGianTour.Tour = tourRepository.GetSingleByCondition(t => t.MaTour == x.ThoiGianTour.MaTour);
            });
            return dsDangKy;
        }

        public IEnumerable<object> GetAllListGroupTourByTime(int MaThoiGianTour)
        {
            var dsDoan = doanDuLichRepository.GetMulti(x => x.MaThoiGianTour == MaThoiGianTour).ToList();
            List<object> listSelect = new List<object>();
            dsDoan.ForEach(x =>
            {
                listSelect.Add(new
                {
                    MaDoanDuLich = x.MaDoanDuLich,
                    NoiDung = x.TenDoanDuLich + " -- Số lượng khách hiện có: " + x.SoLuongKhach + "/50 -- Số chỗ còn lại: " + (50 - x.SoLuongKhach) 
                });
            });
            return listSelect as IEnumerable<object>;
        }

        public void SaveChange()
        {
            unitOfWork.Commit();
        }

        public ResultState TaoDoanDuLich(DoanDuLich doanDuLich, List<BangDangKy> dsDangKy, Dictionary<string, string> dsNhanVien)
        {
            // Tạo đoàn để sinh Id
            doanDuLichRepository.Add(doanDuLich);
            SaveChange();
            // Cập nhật số nhân viên và số khách hàng đăng ký đoàn này
            int slNhanVien = 0;
            foreach(string key in dsNhanVien.Keys)
            {
                string value = dsNhanVien[key];
                if (value != null && !value.Equals(""))
                {
                    slNhanVien++;
                    var nv = nhanVienRepository.GetSingleByCondition(n => n.HoTen.Equals(value));
                    if(nv == null)
                    {
                        return new ResultState(false, "Nhân viên tên " + value + " không có trong danh sách của hệ thống.");
                    }
                    else
                    {
                        var pc = new PhanCong();
                        pc.MaDoanDuLich = doanDuLich.MaDoanDuLich;
                        pc.MaNhanVien = nv.MaNhanVien;
                        pc.MaNhiemVu = nhiemVuRepository.GetSingleByCondition(x => x.TenNhiemVu.Equals(key)).MaNhiemVu;
                        phanCongRepository.Add(pc);
                    }
                }
            };
            int slKhachDangKy = dsDangKy.Count;
            doanDuLich.SoLuongKhach = slKhachDangKy;
            doanDuLich.SoLuongNhanVien = slNhanVien;
            SaveChange();
            // Cập nhật mã đoàn cho khách hàng
            dsDangKy.ForEach(x =>
            {
                var dk = bangDangKyRepository.GetSingleById(x.Id);
                dk.MaDoanDuLich = doanDuLich.MaDoanDuLich;
            });
            SaveChange();
            return new ResultState(true, "Đã tạo đoàn khách du lịch thành công.");
        }
    }
}