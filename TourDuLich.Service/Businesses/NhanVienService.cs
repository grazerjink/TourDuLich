using System.Collections.Generic;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface INhanVienService
    {
        IEnumerable<NhanVien> GetAllListNhanVien();
    }

    public class NhanVienService : INhanVienService
    {
        private INhanVienRepository nhanVienRepository;
        private IUnitOfWork unitOfWork;

        public NhanVienService(INhanVienRepository nhanVienRepository,
                                IUnitOfWork unitOfWork)
        {
            this.nhanVienRepository = nhanVienRepository;
            this.unitOfWork = unitOfWork;
        }

        public IEnumerable<NhanVien> GetAllListNhanVien()
        {
            return nhanVienRepository.GetAll();
        }
    }
}