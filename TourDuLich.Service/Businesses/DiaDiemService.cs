using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface IDiaDiemService
    {
    }

    public class DiaDiemService : IDiaDiemService
    {
        private IDiaDiemRepository diaDiemRepository;
        private IUnitOfWork unitOfWork;

        public DiaDiemService(IDiaDiemRepository diaDiemRepository,
                                IUnitOfWork unitOfWork)
        {
            this.diaDiemRepository = diaDiemRepository;
            this.unitOfWork = unitOfWork;
        }
    }
}