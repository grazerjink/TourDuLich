using System.Collections.Generic;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface ITourService
    {
        IEnumerable<Tour> GetAllListTour();
    }

    public class TourService : ITourService
    {
        private ITourRepository tourRepository;
        private IUnitOfWork unitOfWork;

        public TourService(ITourRepository tourRepository,
                                IUnitOfWork unitOfWork)
        {
            this.tourRepository = tourRepository;
            this.unitOfWork = unitOfWork;
        }

        public IEnumerable<Tour> GetAllListTour()
        {
            return tourRepository.GetAll();
        }        
    }
}