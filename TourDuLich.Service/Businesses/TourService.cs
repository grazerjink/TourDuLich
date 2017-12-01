using System.Collections.Generic;
using System.Linq;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;
using TourDuLich.Service.Commons;

namespace TourDuLich.Service.Businesses
{
    public interface ITourService
    {
        IEnumerable<Tour> GetAllListTour();

        string[] GetAllTourActiveName();

        bool LapDanhSachDiaDiem(List<IndexInfo> listIndexInfo, int indexTour);

        List<IndexInfo> LayDanhSachDiaDiemTheoTour(int indexTour);
    }

    public class TourService : ITourService
    {
        private ITourRepository tourRepository;
        private IUnitOfWork unitOfWork;
        private ITinhThanhRepository tinhThanhRepository;
        private IDiaDiemRepository diaDiemRepository;
        private ITourDiemThamQuanRepository tourDiemThamQuanRepository;

        public TourService(ITourRepository tourRepository,
                            ITinhThanhRepository tinhThanhRepository,
                            IDiaDiemRepository diaDiemRepository,
                            ITourDiemThamQuanRepository tourDiemThamQuanRepository,
                            IUnitOfWork unitOfWork)
        {
            this.tourRepository = tourRepository;
            this.tinhThanhRepository = tinhThanhRepository;
            this.diaDiemRepository = diaDiemRepository;
            this.tourDiemThamQuanRepository = tourDiemThamQuanRepository;
            this.unitOfWork = unitOfWork;
        }

        public IEnumerable<Tour> GetAllListTour()
        {
            return tourRepository.GetAll();
        }

        public string[] GetAllTourActiveName()
        {
            var list = tourRepository.GetMulti(x=>x.TrangThai == true);
            List<string> names = new List<string>();
            foreach (var t in list)
            {
                names.Add(t.TenTour);
            }
            return names.ToArray();
        }

        public List<IndexInfo> LayDanhSachDiaDiemTheoTour(int indexTour)
        {
            var tour = tourRepository.GetMulti(x => x.TrangThai == true).ToArray()[indexTour];
            var listDiemThamQuan = tourDiemThamQuanRepository.GetMulti(x => x.MaTour == tour.MaTour, new string[] { "DiaDiem" });
            List<IndexInfo> listIndex = new List<IndexInfo>();
            foreach(var tq in listDiemThamQuan)
            {
                IndexInfo indexInfo = new IndexInfo();
                var listTinhThanh = tinhThanhRepository.GetAll().ToArray();
                for(int i=0; i<listTinhThanh.Count(); i++)
                {
                    if(listTinhThanh[i].MaTinhThanh == tq.DiaDiem.MaTinhThanh)
                    {
                        indexInfo.IndexTinhThanh = i;
                        indexInfo.TenTinhThanh = listTinhThanh[i].TenTinhThanh;
                        break;
                    }
                }
                var listDiaDiem = diaDiemRepository.GetMulti(x => x.MaTinhThanh == tq.DiaDiem.MaTinhThanh).OrderBy(x => x.TenDiaDiem).ToArray();
                for (int i = 0; i < listDiaDiem.Count(); i++)
                {
                    if (listDiaDiem[i].MaDiaDiem == tq.DiaDiem.MaDiaDiem)
                    {
                        indexInfo.IndexDiaDiem = i;
                        indexInfo.TenDiaDiem = listDiaDiem[i].TenDiaDiem;
                        break;
                    }
                }
                listIndex.Add(indexInfo);
            }
            return listIndex;
        }

        public bool LapDanhSachDiaDiem(List<IndexInfo> listIndexInfo, int indexTour)
        {
            try
            {
                var tour = tourRepository.GetMulti(x => x.TrangThai == true).ToArray()[indexTour];
                tourDiemThamQuanRepository.DeleteMulti(x => x.MaTour == tour.MaTour);
                foreach(var index in listIndexInfo)
                {
                    var tinhThanh = tinhThanhRepository.GetAll().ToArray()[index.IndexTinhThanh];
                    var diaDiem = diaDiemRepository.GetMulti(y => y.MaTinhThanh == tinhThanh.MaTinhThanh).OrderBy(x => x.TenDiaDiem).ToArray()[index.IndexDiaDiem];
                    
                    var tourDiemThamQuan = new TourDiemThamQuan()
                    {
                        MaDiaDiem = diaDiem.MaDiaDiem,
                        MaTour = tour.MaTour
                    };
                    tourDiemThamQuanRepository.Add(tourDiemThamQuan);
                }
                SaveChange();
                return true;
            }
            catch
            {
                return false;
            }
        }

        private void SaveChange()
        {
            unitOfWork.Commit();
        }
    }
}