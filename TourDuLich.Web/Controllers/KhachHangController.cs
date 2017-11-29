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
            if (Session["dsKhachHang"] == null)
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
        public ActionResult DangKyThongTin(KhachHangViewModel khachHangVM)
        {
            if (ModelState.IsValid)
            {
                var sessionList = Session["dsKhachHang"] as List<KhachHangViewModel>;
                var khachHang = new KhachHang();
                khachHang.UpdateKhachHang(khachHangVM);
                var result = khachHangService.LuuThongTinKhachHang(khachHang);
                if (result.Success)
                {
                    var resultObj = result.ResultObject as KhachHang;
                    var exist = sessionList.Find(x => x.MaKhachHang == resultObj.MaKhachHang);
                    if (exist == null)
                    {
                        khachHangVM.MaKhachHang = resultObj.MaKhachHang;
                        khachHangVM.QuocTich = resultObj.QuocTich;
                        sessionList.Add(khachHangVM);

                        ViewBag.Success = result.Message;
                        TempData["Success"] = "Thêm khách hàng thành công";
                    }
                    else
                    {
                        TempData["Error"] = "Khách hàng đã được thêm vào danh sách rồi.";
                    }
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
            return View("DangKy");
        }

        [Route("dang-ky-tour")]
        public ActionResult DangKyTour(KhachHangViewModel khachHangVM)
        {
            // Xử lý thêm vào bảng đăng ký cho từng khách hàng
            List<KhachHang> dsKhachHang = new List<KhachHang>();
            ThoiGianTour thoiGianTour = khachHangVM.ThoiGianTour;
            List<KhachHangViewModel> dsKhachHangViewModel = Session["dsKhachHang"] as List<KhachHangViewModel>;

            // Map viewmodel sang đối tượng Entities
            dsKhachHangViewModel.ForEach(x =>
            {
                KhachHang khachHang = new KhachHang();
                khachHang.UpdateKhachHang(x);
                dsKhachHang.Add(khachHang);
            });

            // Thêm bảng đăng ký tour
            var ketQua = khachHangService.DangKyTourDuLich(dsKhachHang, thoiGianTour);
            if (ketQua.Success)
            {
                // Thành công thì xóa phiên làm việc cũ
                Session.RemoveAll();
                TempData["Success"] = ketQua.Message;
            }
            else
            {
                TempData["Error"] = ketQua.Message;
            }
            return RedirectToAction("DangKy");
        }

        [Route("xoa-khach-hang")]
        // GET: Home
        public JsonResult XoaKhachHang(int id)
        {
            var sessionList = Session["dsKhachHang"] as List<KhachHangViewModel>;
            sessionList.RemoveAll(x => x.MaKhachHang == id);
            return Json(200, JsonRequestBehavior.AllowGet);
        }        
    }
}