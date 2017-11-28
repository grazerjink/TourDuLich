using System;
using System.Collections.Generic;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;
using System.Linq;

namespace TourDuLich.Service.Businesses
{
    public interface IThoiGianTourService
    {
        List<object> GetListTimeByTour(int MaTour);
    }

    public class ThoiGianTourService : IThoiGianTourService
    {
        private IThoiGianTourRepository thoiGianTourRepository;
        private IUnitOfWork unitOfWork;

        public ThoiGianTourService(IThoiGianTourRepository thoiGianTourRepository,
                                IUnitOfWork unitOfWork)
        {
            this.thoiGianTourRepository = thoiGianTourRepository;
            this.unitOfWork = unitOfWork;
        }

        public List<object> GetListTimeByTour(int MaTour)
        {
            List<object> list = new List<object>();
            var listThoiGian = thoiGianTourRepository.GetMulti(x => x.MaTour == MaTour && x.NgayDi > DateTime.Now).ToList();
            listThoiGian.ForEach(x => {
                list.Add(new
                {
                    MaThoiGian = x.MaThoiGianTour,
                    ThoiGian = x.NgayDi.Value.ToString("dd / MM / yyyy") + " -- " + x.NgayVe.Value.ToString("dd / MM / yyyy")
                });
            });
            return list;
        }
    }
}