using System.Collections.Generic;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface IQuocTichService
    {
        IEnumerable<QuocTich> GetAllListQuocTich();
    }

    public class QuocTichService : IQuocTichService
    {
        private IQuocTichRepository quocTichRepository;
        private IUnitOfWork unitOfWork;

        public QuocTichService(IQuocTichRepository quocTichRepository,
                                IUnitOfWork unitOfWork)
        {
            this.quocTichRepository = quocTichRepository;
            this.unitOfWork = unitOfWork;
        }

        public IEnumerable<QuocTich> GetAllListQuocTich()
        {
            return quocTichRepository.GetAll();
        }
    }
}