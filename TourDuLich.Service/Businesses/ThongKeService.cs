using System;
using System.Linq;
using TourDuLich.Data.Repositories;
using TourDuLich.Service.Commons;

namespace TourDuLich.Service.Businesses
{
    public interface IThongKeService
    {
        DoanhThuViewModel ThongKeDoanhThuTourDuLich(DateTime from, DateTime to, int[] IndexTour);
    }

    public class ThongKeService : IThongKeService
    {
        private IThoiGianTourRepository thoiGianTourRepository;
        private ITourRepository tourRepository;
        private IGiaTourRepository giaTourRepository;
        private IBangDangKyRepository bangDangKyRepository;

        public ThongKeService(IThoiGianTourRepository thoiGianTourRepository,
                                ITourRepository tourRepository,
                                IGiaTourRepository giaTourRepository,
                                IBangDangKyRepository bangDangKyRepository)
        {
            this.bangDangKyRepository = bangDangKyRepository;
            this.tourRepository = tourRepository;
            this.thoiGianTourRepository = thoiGianTourRepository;
            this.giaTourRepository = giaTourRepository;
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
                    var listThoiGianTour = thoiGianTourRepository.GetMulti(x => x.MaTour == tour.MaTour);
                    for (int j = 0; j < listThoiGianTour.Count(); j++)
                    {
                        // Lay gia tour theo thoi gian da chi dinh
                        var tourGia = giaTourRepository.GetMulti(x => x.MaTour == tour.MaTour && x.ThoiGianBatDau <= from && to <= x.ThoiGianKetThuc).OrderByDescending(x => x.Id).FirstOrDefault();
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
    }
}