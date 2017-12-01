using System.Collections.Generic;
using System.Linq;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface ITinhThanhService
    {
        IEnumerable<TinhThanh> GetAll();
        string[] GetAllStringName();
        string[] GetAllLocationNameByIndex(int index);
    }

    public class TinhThanhService : ITinhThanhService
    {
        private ITinhThanhRepository tinhThanhRepository;
        private IDiaDiemRepository diaDiemRepository;
        private IUnitOfWork unitOfWork;

        public TinhThanhService(ITinhThanhRepository tinhThanhRepository,
            IDiaDiemRepository diaDiemRepository,
            IUnitOfWork unitOfWork)
        {
            this.tinhThanhRepository = tinhThanhRepository;
            this.diaDiemRepository = diaDiemRepository;
            this.unitOfWork = unitOfWork;
        }

        public IEnumerable<TinhThanh> GetAll()
        {
            return tinhThanhRepository.GetAll();
        }

        public string[] GetAllStringName()
        {
            var list = tinhThanhRepository.GetAll();
            List<string> names = new List<string>();
            foreach (var t in list)
            {
                names.Add(t.TenTinhThanh);
            }
            return names.ToArray();
        }

        public string[] GetAllLocationNameByIndex(int index)
        {
            var list = tinhThanhRepository.GetAll().ToArray();
            var maTinhThanh = list[index].MaTinhThanh;
            var listLocation = diaDiemRepository.GetMulti(x=>x.MaTinhThanh == maTinhThanh).OrderBy(x=>x.TenDiaDiem);
            List<string> names = new List<string>();
            foreach(var n in listLocation)
            {
                names.Add(n.TenDiaDiem);
            }
            return names.ToArray();
        }
    }
}