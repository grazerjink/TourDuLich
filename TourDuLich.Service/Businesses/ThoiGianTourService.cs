using System;
using System.Collections.Generic;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;
using System.Linq;
using TourDuLich.Data;

namespace TourDuLich.Service.Businesses
{
    public interface IThoiGianTourService
    {
        IEnumerable<object> GetListTimeByTour(int MaTour);
        ThoiGianTour GetInfoByTimeId(int timeId);
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

        public IEnumerable<object> GetListTimeByTour(int MaTour)
        {
            List<object> listSelect = new List<object>();
            var listThoiGian = thoiGianTourRepository.GetMulti(x => x.MaTour == MaTour && x.NgayDi > DateTime.Now).ToList();
            listThoiGian.ForEach(x => {
                listSelect.Add(new
                {
                    MaThoiGian = x.MaThoiGianTour,
                    ThoiGian = x.NgayDi.Value.ToString("dd / MM / yyyy") + " -- " + x.NgayVe.Value.ToString("dd / MM / yyyy")
                });
            });
            return listSelect as IEnumerable<object>;
        }

        public ThoiGianTour GetInfoByTimeId(int timeId)
        {
            return thoiGianTourRepository.GetSingleByCondition(x => x.MaThoiGianTour == timeId, new string[] { "Tour" });
        }
    }
}