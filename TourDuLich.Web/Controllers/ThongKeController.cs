using System;
using System.Web.Mvc;
using TourDuLich.Service.Businesses;
using TourDuLich.Web.Filters;

namespace TourDuLich.Web.Controllers
{
    [DoanDuLichActionFilter]
    public class ThongKeController : Controller
    {
        public IThongKeService thongKeService { get; set; }

        // GET: ThongKeChiPhi
        [HttpGet]
        [Route("thong-ke-chi-phi")]
        public ActionResult ThongKeChiPhi()
        {
            return View();
        }
        
        [Route("thong-ke")]
        public JsonResult ThongKeChiPhi(DateTime from, DateTime to, int MaTour)
        {
            var dsThongKe = thongKeService.GetListFeeOfTour(from, to, MaTour);
            return Json(dsThongKe, JsonRequestBehavior.AllowGet);
        }
    }
}