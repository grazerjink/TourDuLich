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
    }

    public class DoanDuLichService : IDoanDuLichService
    {
        private IBangDangKyRepository bangDangKyRepository;
        private IQuocTichRepository quocTichRepository;
        private ITourRepository tourRepository;
        private IUnitOfWork unitOfWork;

        public DoanDuLichService(IBangDangKyRepository bangDangKyRepository,
                                IQuocTichRepository quocTichRepository,
                                ITourRepository tourRepository,
                                IUnitOfWork unitOfWork)
        {
            this.bangDangKyRepository = bangDangKyRepository;
            this.tourRepository = tourRepository;
            this.quocTichRepository = quocTichRepository;
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

        public void SaveChange()
        {
            unitOfWork.Commit();
        }
    }
}