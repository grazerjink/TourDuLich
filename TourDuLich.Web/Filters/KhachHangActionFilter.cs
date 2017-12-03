using System.Web.Mvc;
using TourDuLich.Service.Businesses;

namespace TourDuLich.Web.Filters
{
    public class KhachHangActionFilter : ActionFilterAttribute
    {
        public ITourService tourService { get; set; }
        public IQuocTichService quocTichService { get; set; }

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            filterContext.Controller.ViewBag.QuocTichSelectList = new SelectList(quocTichService.GetAllListQuocTich(), "MaQuocTich", "TenQuocTich");
            filterContext.Controller.ViewBag.TourSelectList = new SelectList(tourService.GetAllListTour(), "MaTour", "TenTour");
        }
    }
}