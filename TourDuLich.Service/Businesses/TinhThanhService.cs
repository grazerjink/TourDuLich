using System.Collections.Generic;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface ITinhThanhService
    {
        IEnumerable<TinhThanh> GetAll();
    }

    public class TinhThanhService : ITinhThanhService
    {
        private ITinhThanhRepository tinhThanhRepository;
        private IUnitOfWork unitOfWork;

        public TinhThanhService(ITinhThanhRepository tinhThanhRepository, IUnitOfWork unitOfWork)
        {
            this.tinhThanhRepository = tinhThanhRepository;
            this.unitOfWork = unitOfWork;
        }

        public IEnumerable<TinhThanh> GetAll()
        {
            return tinhThanhRepository.GetAll();
        }
    }
}