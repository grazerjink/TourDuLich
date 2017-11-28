using System.Web.Mvc;
using TourDuLich.Service.Businesses;

namespace TourDuLich.Web.Controllers
{
    public class ApiController : Controller
    {
        public IThoiGianTourService thoiGianTourService { get; set; }

        [Route("lay-thoi-gian-tour")]
        public JsonResult LayThoiGianTheoTour(int MaTour)
        {
            return Json(thoiGianTourService.GetListTimeByTour(MaTour), JsonRequestBehavior.AllowGet);
        }                
    }
}