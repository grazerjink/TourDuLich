using System.Web.Mvc;
using TourDuLich.Service.Businesses;

namespace TourDuLich.Web.Filters
{
    public class KhachHangActionFilter : ActionFilterAttribute
    {
        public IKhachHangService khachHangService { get; set; }

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            filterContext.Controller.ViewBag.QuocTichSelectList = new SelectList(khachHangService.GetAllListQuocTich(), "MaQuocTich", "TenQuocTich");
        }
    }
}