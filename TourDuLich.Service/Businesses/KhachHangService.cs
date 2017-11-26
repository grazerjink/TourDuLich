using System;
using System.Collections.Generic;
using System.Linq;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface IKhachHangService
    {
        IEnumerable<QuocTich> GetAllListQuocTich();
        IEnumerable<Tour> GetAllListTour();
        List<object> GetListTimeByTour(int MaTour);
        ResultState LuuThongTinKhachHang(KhachHang khachHang);
    }

    public class KhachHangService : IKhachHangService
    {
        private IKhachHangRepository khachHangRepository;
        private IQuocTichRepository quocTichRepository;
        private IThoiGianTourRepository thoiGianTourRepository;
        private ITourRepository tourRepository;
        private IUnitOfWork unitOfWork;

        public KhachHangService(IKhachHangRepository khachHangRepository,
                                IQuocTichRepository quocTichRepository,
                                IThoiGianTourRepository thoiGianTourRepository,
                                ITourRepository tourRepository,
                                IUnitOfWork unitOfWork)
        {
            this.quocTichRepository = quocTichRepository;
            this.khachHangRepository = khachHangRepository;
            this.thoiGianTourRepository = thoiGianTourRepository;
            this.tourRepository = tourRepository;
            this.unitOfWork = unitOfWork;
        }

        public IEnumerable<QuocTich> GetAllListQuocTich()
        {
            return quocTichRepository.GetAll();
        }

        public List<object> GetListTimeByTour(int MaTour)
        {
            List<object> list = new List<object>();
            var listThoiGian = thoiGianTourRepository.GetMulti(x => x.MaTour == MaTour && x.NgayDi > DateTime.Now).ToList();
            listThoiGian.ForEach(x => {
                list.Add(new {
                    MaThoiGian = x.MaThoiGianTour,
                    ThoiGian = x.NgayDi.Value.ToString("dd / MM / yyyy") + " -- "+ x.NgayVe.Value.ToString("dd / MM / yyyy")
                });
            });
            return list;
        }

        public IEnumerable<Tour> GetAllListTour()
        {
            return tourRepository.GetAll();
        }

        public ResultState LuuThongTinKhachHang(KhachHang khachHang)
        {
            bool success = false;
            string message = "";
            var tonTai = khachHangRepository.GetSingleByCondition(x => x.CMND == khachHang.CMND || x.Passport == khachHang.Passport, new string[] {"QuocTich"});
            if (tonTai == null)
            {
                khachHangRepository.Add(khachHang);
                unitOfWork.Commit();
                khachHang.QuocTich = quocTichRepository.GetSingleById((int)khachHang.MaQuocTich);
                success = true;
                message = "Đã lưu thông tin thành công.";
                return new ResultState(success, message, khachHang);
            }
            else
            {
                success = true;
                message = "Đã lưu thông tin thành công.";
                return new ResultState(success, message, tonTai);
            }                   
        }
    }
}