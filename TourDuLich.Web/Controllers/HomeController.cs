using System.Web.Mvc;

namespace TourDuLich.Web.Controllers
{
    public class HomeController : Controller
    {
        [Route("")]
        [Route("index")]
        // GET: Home
        public ActionResult Index()
        {
            return View();
        }
    }
}