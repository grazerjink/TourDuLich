using System;
using System.Collections.Generic;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;
using System.Linq;

namespace TourDuLich.Service.Businesses
{
    public interface IBangDangKyService
    {
        List<BangDangKy> GetAllListCheckInByTime(int MaThoiGian);
    }

    public class BangDangKyService : IBangDangKyService
    {
        private IBangDangKyRepository bangDangKyRepository;
        private IQuocTichRepository quocTichRepository;
        private ITourRepository tourRepository;
        private IUnitOfWork unitOfWork;

        public BangDangKyService(IBangDangKyRepository bangDangKyRepository,
                                IQuocTichRepository quocTichRepository,
                                ITourRepository tourRepository,
                                IUnitOfWork unitOfWork)
        {
            this.bangDangKyRepository = bangDangKyRepository;
            this.tourRepository = tourRepository;
            this.quocTichRepository = quocTichRepository;
            this.unitOfWork = unitOfWork;
        }

        public List<BangDangKy> GetAllListCheckInByTime(int MaThoiGian)
        {
            var dsDangKy = bangDangKyRepository.GetMulti(x => x.MaThoiGian == MaThoiGian && x.MaDoanDuLich == null && x.ThoiGianTour.NgayDi >= DateTime.Now, new string[] { "KhachHang", "ThoiGianTour" }).ToList();
            dsDangKy.ForEach(x =>
            {
                x.KhachHang.QuocTich = quocTichRepository.GetSingleByCondition(qt => qt.MaQuocTich == x.KhachHang.MaQuocTich);
                x.ThoiGianTour.Tour = tourRepository.GetSingleByCondition(t => t.MaTour == x.ThoiGianTour.MaTour);
            });
            return dsDangKy;
        }

        public void SaveChange()
        {
            unitOfWork.Commit();
        }
    }
}