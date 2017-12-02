using MoreLinq;
using System;
using System.Collections.Generic;
using System.Linq;
using TourDuLich.Data;
using TourDuLich.Data.Repositories;
using TourDuLich.Service.Commons;

namespace TourDuLich.Service.Businesses
{
    public interface IThongKeService
    {
        DoanhThuViewModel ThongKeDoanhThuTourDuLich(DateTime from, DateTime to, int[] IndexTour);
        SoLanDiTourViewModel ThongKeSoLanDiTour(DateTime from, DateTime to);
    }

    public class ThongKeService : IThongKeService
    {
        private IThoiGianTourRepository thoiGianTourRepository;
        private ITourRepository tourRepository;
        private IGiaTourRepository giaTourRepository;
        private IBangDangKyRepository bangDangKyRepository;
        private IPhanCongRepository phanCongRepository;
        private IDoanDuLichRepository doanDuLichRepository;
        private INhanVienRepository nhanVienRepository;

        public ThongKeService(IThoiGianTourRepository thoiGianTourRepository,
                                ITourRepository tourRepository,
                                IGiaTourRepository giaTourRepository,
                                IBangDangKyRepository bangDangKyRepository,
                                IPhanCongRepository phanCongRepository,
                                IDoanDuLichRepository doanDuLichRepository,
                                INhanVienRepository nhanVienRepository)
        {
            this.bangDangKyRepository = bangDangKyRepository;
            this.tourRepository = tourRepository;
            this.thoiGianTourRepository = thoiGianTourRepository;
            this.giaTourRepository = giaTourRepository;
            this.phanCongRepository = phanCongRepository;
            this.doanDuLichRepository = doanDuLichRepository;
            this.nhanVienRepository = nhanVienRepository;
        }

        public DoanhThuViewModel ThongKeDoanhThuTourDuLich(DateTime from, DateTime to, int[] IndexTour)
        {
            if (IndexTour.Count() >= 1)
            {
                DoanhThuViewModel doanhThu = new DoanhThuViewModel();
                doanhThu.Count = 0;
                doanhThu.TongDoanhThu = 0;
                doanhThu.TenTour = new string[IndexTour.Count()];
                doanhThu.DoanhThu = new double[IndexTour.Count()];
                doanhThu.SoLuongKhach = new int[IndexTour.Count()];
                for (int i = 0; i < IndexTour.Count(); i++)
                {
                    // lay ten tour
                    var tour = tourRepository.GetMulti(x => x.TrangThai == true).ToArray()[IndexTour[i]];
                    doanhThu.TenTour[i] = tour.TenTour;

                    // Tinh toan tong tien doanh thu va tong so luong khach
                    int soLuongKhach = 0;
                    double tongTien = 0;
                    var listThoiGianTour = thoiGianTourRepository.GetMulti(x => x.MaTour == tour.MaTour && x.NgayDi >= from && x.NgayVe <= to);
                    for (int j = 0; j < listThoiGianTour.Count(); j++)
                    {
                        // Lay gia tour theo thoi gian da chi dinh
                        var tourGia = giaTourRepository.GetMulti(x => x.MaTour == tour.MaTour && x.ThoiGianBatDau.Value <= from && x.ThoiGianKetThuc.Value >= to).OrderByDescending(x => x.Id).FirstOrDefault();
                        double giaTour = tourGia == null ? 0 : tourGia.GiaTien.Value;
                        // Lay so luong khach di thoi gian do tinh tong tien doanh thu
                        int maThoiGian = listThoiGianTour.ToArray()[j].MaThoiGianTour;
                        soLuongKhach += bangDangKyRepository.GetMulti(x => x.MaThoiGian == maThoiGian).Count();
                        tongTien += giaTour * soLuongKhach;
                    }
                    doanhThu.SoLuongKhach[i] = soLuongKhach;
                    doanhThu.DoanhThu[i] = tongTien;
                    doanhThu.TongDoanhThu += tongTien;
                    doanhThu.Count++;
                }
                return doanhThu;
            }
            else
            {
                return null;
            }
        }

        public SoLanDiTourViewModel ThongKeSoLanDiTour(DateTime from, DateTime to)
        {
            SoLanDiTourViewModel dsThongKe = new SoLanDiTourViewModel();
            dsThongKe.ListNhanVien = new List<NhanVien>();
            dsThongKe.ListDoanDaDi = new List<List<DoanDuLich>>();
            dsThongKe.SoLanDi = new List<int>();
            var dsNhanVien = nhanVienRepository.GetMulti(x => x.TrangThai == true, new string[] { "PhanCongs" });
            foreach (var nv in dsNhanVien)
            {
                int soLanDi = 0;
                List<DoanDuLich> listDoanDaDi = new List<DoanDuLich>();
                dsThongKe.ListNhanVien.Add(nv);
                if(nv.PhanCongs.Count <= 0)
                {
                    dsThongKe.SoLanDi.Add(soLanDi);
                    dsThongKe.ListDoanDaDi.Add(listDoanDaDi);
                }
                else
                {
                    foreach(var pc in nv.PhanCongs.DistinctBy(x=>x.MaDoanDuLich))
                    {
                        if(pc.DoanDuLich.ThoiGianTour.NgayDi.Value.Date >= from.Date && pc.DoanDuLich.ThoiGianTour.NgayVe.Value.Date <= to.Date)
                        {
                                soLanDi++;
                                listDoanDaDi.Add(pc.DoanDuLich);
                        }
                    }
                    dsThongKe.SoLanDi.Add(soLanDi);
                    dsThongKe.ListDoanDaDi.Add(listDoanDaDi);
                }
            }
            return dsThongKe;
        }
    }
}