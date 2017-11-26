using System.Collections.Generic;
using TourDuLich.Data;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;

namespace TourDuLich.Service.Businesses
{
    public interface IKhachHangService
    {
        IEnumerable<QuocTich> GetAllListQuocTich();
        ResultState LuuThongTinKhachHang(KhachHang khachHang);
    }

    public class KhachHangService : IKhachHangService
    {
        private IKhachHangRepository khachHangRepository;
        private IQuocTichRepository quocTichRepository;
        private IUnitOfWork unitOfWork;

        public KhachHangService(IKhachHangRepository khachHangRepository,
                                IQuocTichRepository quocTichRepository,
                                IUnitOfWork unitOfWork)
        {
            this.quocTichRepository = quocTichRepository;
            this.khachHangRepository = khachHangRepository;
            this.unitOfWork = unitOfWork;
        }

        public IEnumerable<QuocTich> GetAllListQuocTich()
        {
            return quocTichRepository.GetAll();
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