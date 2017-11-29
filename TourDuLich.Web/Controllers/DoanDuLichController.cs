using System.Web.Mvc;
using TourDuLich.Service.Businesses;
using TourDuLich.Web.Filters;

namespace TourDuLich.Web.Controllers
{
    [DoanDuLichActionFilter]
    public class DoanDuLichController : Controller
    {
        public IBangDangKyService bangDangKyService { get; set; }
        public ITourService tourService { get; set; }
        public IThoiGianTourService thoiGianTourService { get; set; }
        public IDoanDuLichService doanDuLichService { get; set; }

        [Route("lap-doan-du-lich")]
        public ActionResult LapDoanDuLich()
        {
            return View();
        }

        [Route("lay-danh-sach-dang-ky")]
        public ActionResult LayDanhSachDangKyTheoThoiGianTour(int? MaTour, int? MaThoiGianTour)
        {
            if (MaTour.HasValue && MaThoiGianTour.HasValue)
            {
                ViewBag.TourSelectList = new SelectList(tourService.GetAllListTour(), "MaTour", "TenTour", MaTour);
                ViewBag.ThoiGianTourSelectList = new SelectList(thoiGianTourService.GetListTimeByTour(MaTour.Value), "MaThoiGian", "ThoiGian", MaThoiGianTour);
                ViewBag.DoanSelectList = new SelectList(doanDuLichService.GetAllListGroupTourByTime(MaThoiGianTour.Value), "MaDoanDuLich", "NoiDung");
                ViewBag.dsDangKy = bangDangKyService.GetAllListCheckInByTime(MaThoiGianTour.Value);
            }
            return View("LapDoanDuLich");
        }

        [Route("ghep-doan")]
        public ActionResult GhepDoan()
        {
            return View();
        }

        [Route("tao-doan")]
        public ActionResult TaoDoan()
        {
            return View();
        }
    }
}