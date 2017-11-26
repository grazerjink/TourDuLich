using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface ITourService
    {
    }

    public class TourService : ITourService
    {
        private ITourRepository tourRepository;
        private IUnitOfWork unitOfWork;

        public TourService(ITourRepository tourRepository,
                                IQuocTichRepository quocTichRepository,
                                IUnitOfWork unitOfWork)
        {
            this.tourRepository = tourRepository;
            this.unitOfWork = unitOfWork;
        }
    }
}