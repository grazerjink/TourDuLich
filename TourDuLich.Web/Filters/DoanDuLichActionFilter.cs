using System.Web.Mvc;
using TourDuLich.Service.Businesses;

namespace TourDuLich.Web.Filters
{
    public class DoanDuLichActionFilter : ActionFilterAttribute
    {
        public ITourService tourService { get; set; }

        public override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            filterContext.Controller.ViewBag.TourSelectList = new SelectList(tourService.GetAllListTour(), "MaTour", "TenTour");
        }
    }
}