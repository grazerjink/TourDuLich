using System.Collections.Generic;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface INhiemVuService
    {
        IEnumerable<NhiemVu> GetAll();
    }

    public class NhiemVuService : INhiemVuService
    {
        private INhiemVuRepository nhiemVuRepository;
        private IUnitOfWork unitOfWork;

        public NhiemVuService(INhiemVuRepository nhiemVuRepository, IUnitOfWork unitOfWork)
        {
            this.nhiemVuRepository = nhiemVuRepository;
            this.unitOfWork = unitOfWork;
        }

        public IEnumerable<NhiemVu> GetAll()
        {
            return nhiemVuRepository.GetAll();
        }
    }
}