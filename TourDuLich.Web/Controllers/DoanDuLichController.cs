using System.Collections.Generic;
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
                ViewBag.ThoiGianTourSelectList = new SelectList(thoiGianTourService.GetListTimeByTour(MaTour.Value) as IEnumerable<object>, "MaThoiGian", "ThoiGian", MaThoiGianTour);
                ViewBag.dsDangKy = bangDangKyService.GetAllListCheckInByTime(MaThoiGianTour.Value);
            }
            return View("LapDoanDuLich");
        }
    }
}