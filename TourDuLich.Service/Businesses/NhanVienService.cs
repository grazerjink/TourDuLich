using System.Collections.Generic;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface INhanVienService
    {
        IEnumerable<NhanVien> GetAll();
    }

    public class NhanVienService : INhanVienService
    {
        INhanVienRepository nhanVienRepository;
        IUnitOfWork unitOfWork;

        public NhanVienService(INhanVienRepository nhanVienRepository, IUnitOfWork unitOfWork)
        {
            this.nhanVienRepository = nhanVienRepository;
            this.unitOfWork = unitOfWork;
        }

        public IEnumerable<NhanVien> GetAll()
        {
            return nhanVienRepository.GetAll();
        }
    }
}