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
        
        [Route("dang-ky")]
        // GET: Home
        public ActionResult DangKy()
        {
            return View();
        }
        
        [Route("thong-ke")]
        // GET: Home
        public ActionResult ThongKe()
        {
            return View();
        }
    }
}