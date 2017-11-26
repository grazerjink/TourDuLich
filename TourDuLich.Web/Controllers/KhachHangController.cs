using System.Collections.Generic;
using System.Web.Mvc;
using TourDuLich.Data;
using TourDuLich.Service.Businesses;
using TourDuLich.Web.Extensions;
using TourDuLich.Web.Filters;
using TourDuLich.Web.Models;

namespace TourDuLich.Web.Controllers
{
    [KhachHangActionFilter]
    public class KhachHangController : Controller
    {
        public IKhachHangService khachHangService { get; set; }

        [HttpGet]
        [Route("dang-ky")]
        // GET: Home
        public ActionResult DangKy()
        {
            if(Session["dsKhachHang"] == null)
                Session["dsKhachHang"] = new List<KhachHangViewModel>();
            return View();
        }

        [HttpGet]
        [Route("lam-moi-phien-lam-viec")]
        // GET: Home
        public ActionResult refresh()
        {
            Session.RemoveAll();
            return RedirectToAction("DangKy");
        }

        [HttpPost]
        [Route("dang-ky")]
        public ActionResult DangKy(KhachHangViewModel khachHangVM)
        {
            if (ModelState.IsValid)
            {
                var sessionList = Session["dsKhachHang"] as List<KhachHangViewModel>;
                var khachHang = new KhachHang();
                khachHang.UpdateKhachHang(khachHangVM);
                var result = khachHangService.LuuThongTinKhachHang(khachHang);
                if(result.Success)
                {
                    var resultObj = result.ResultObject as KhachHang;
                    khachHangVM.MaKhachHang = resultObj.MaKhachHang;
                    khachHangVM.QuocTich = resultObj.QuocTich;
                    sessionList.Add(khachHangVM);
                    ViewBag.Success = result.Message;
                }
                else
                {
                    ViewBag.Error = result.Message;
                }                
            }
            else
            {
                ModelState.AddModelError("", "Chưa khai báo thông tin chính xác.");
            }
            return View();
        }

    }
}