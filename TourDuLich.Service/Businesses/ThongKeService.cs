using MoreLinq;
using System;
using System.Collections.Generic;
using System.Linq;
using TourDuLich.Data;
using TourDuLich.Data.Constants;
using TourDuLich.Data.Repositories;
using TourDuLich.Service.Commons;

namespace TourDuLich.Service.Businesses
{
    public interface IThongKeService
    {
        DoanhThuViewModel ThongKeDoanhThuTourDuLich(DateTime from, DateTime to, int[] IndexTour);

        SoLanDiTourViewModel ThongKeSoLanDiTour(DateTime from, DateTime to);

        TinhHinhHoatDongViewModel ThongKeTinhHinhHoatDongTheoTour(DateTime from, DateTime to, int indexSelected);
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
                        soLuongKhach += bangDangKyRepository.GetMulti(x => x.MaThoiGianTour == maThoiGian).Count();
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
                if (nv.PhanCongs.Count <= 0)
                {
                    dsThongKe.SoLanDi.Add(soLanDi);
                    dsThongKe.ListDoanDaDi.Add(listDoanDaDi);
                }
                else
                {
                    var dsPhanCong = phanCongRepository.GetMulti(x => x.MaNhanVien == nv.MaNhanVien, new string[] { "DoanDuLich" });
                    foreach (var pc in dsPhanCong.DistinctBy(x => x.MaDoanDuLich))
                    {
                        var thoiGianTour = thoiGianTourRepository.GetSingleByCondition(x => x.MaThoiGianTour == pc.DoanDuLich.MaThoiGianTour);
                        if (thoiGianTour.NgayDi.Value.Date >= from.Date && thoiGianTour.NgayVe.Value.Date <= to.Date)
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

        public TinhHinhHoatDongViewModel ThongKeTinhHinhHoatDongTheoTour(DateTime from, DateTime to, int indexSelected)
        {
            TinhHinhHoatDongViewModel dsThongKe = new TinhHinhHoatDongViewModel();
            dsThongKe.DoanhThuTours = new List<double>();
            dsThongKe.DoanThamQuans = new List<string>();
            dsThongKe.LoiNhuans = new List<double>();
            dsThongKe.ThoiGianTours = new List<string>();
            var tourThongKe = tourRepository.GetMulti(x => x.TrangThai == true, new string[] { "ThoiGianTours" }).ToArray()[indexSelected];
            foreach (var tg in tourThongKe.ThoiGianTours.Where(x => x.NgayDi.Value >= from && x.NgayDi.Value <= to))
            {
                int soDoanThamQuan = 0;
                double doanhThu = 0;
                // Tinh tong doanh thu cua 1 tour trong lich khoi hanh tuong ung
                double giaTour = giaTourRepository.GetMulti(x => x.MaTour == tourThongKe.MaTour && x.ThoiGianBatDau.Value <= from && x.ThoiGianKetThuc.Value >= to).OrderByDescending(x => x.Id).FirstOrDefault().GiaTien.Value;
                int slKhachDangKy = bangDangKyRepository.GetMulti(x => x.MaThoiGianTour == tg.MaThoiGianTour).Count();
                doanhThu = giaTour * slKhachDangKy;

                // Lay so doan tham quan co tinh trang la da hoan thanh chuyen di
                var dsDoanThamQuan = doanDuLichRepository.GetMulti(x => x.MaThoiGianTour == tg.MaThoiGianTour && x.TinhTrang == Constants.TT_HOAN_THANH);
                soDoanThamQuan = dsDoanThamQuan.Count();
            
                // Tinh tong tien da chi trong chuyen di
                // Suy ra duoc loi nhuan bang doanhthu - tongtienALL
                double tongTatCa = 0;
                foreach (var doan in dsDoanThamQuan)
                {
                    double tienAnUong = doan.TongTienAnUong.HasValue ? doan.TongTienAnUong.Value : 0;
                    double tienKhachSan = doan.TongTienKhachSan.HasValue ? doan.TongTienKhachSan.Value : 0;
                    double tienPhuongTien = doan.TongTienPhuongTien.HasValue ? doan.TongTienPhuongTien.Value : 0;
                    double tienPhatSinh = doan.TongTienPhatSinh.HasValue ? doan.TongTienPhatSinh.Value : 0;
                    tongTatCa = tienAnUong + tienKhachSan + tienPhuongTien + tienPhatSinh;
                }

                string thoiGian = tg.NgayDi.Value.ToString("dd/MM/yyyy") + "-" + tg.NgayVe.Value.ToString("dd/MM/yyyy");
                string doanThamQuan = "Có " + soDoanThamQuan + " đoàn";
                dsThongKe.ThoiGianTours.Add(thoiGian);
                dsThongKe.DoanThamQuans.Add(doanThamQuan);
                dsThongKe.DoanhThuTours.Add(doanhThu);
                dsThongKe.LoiNhuans.Add(doanhThu - tongTatCa);
            }
            return dsThongKe;
        }
    }
}