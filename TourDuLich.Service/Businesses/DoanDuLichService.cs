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
    }

    public class DoanDuLichService : IDoanDuLichService
    {
        private IBangDangKyRepository bangDangKyRepository;
        private IQuocTichRepository quocTichRepository;
        private ITourRepository tourRepository;
        private IDoanDuLichRepository doanDuLichRepository;
        private IUnitOfWork unitOfWork;

        public DoanDuLichService(IBangDangKyRepository bangDangKyRepository,
                                IQuocTichRepository quocTichRepository,
                                ITourRepository tourRepository,
                                IDoanDuLichRepository doanDuLichRepository,
                                IUnitOfWork unitOfWork)
        {
            this.bangDangKyRepository = bangDangKyRepository;
            this.tourRepository = tourRepository;
            this.quocTichRepository = quocTichRepository;
            this.doanDuLichRepository = doanDuLichRepository;
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
    }
}