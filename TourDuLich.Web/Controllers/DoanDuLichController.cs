using System;
using System.Collections.Generic;
using System.Web.Mvc;
using TourDuLich.Data;
using TourDuLich.Data.Constants;
using TourDuLich.Service.Businesses;
using TourDuLich.Web.Extensions;
using TourDuLich.Web.Filters;
using TourDuLich.Web.Models;

namespace TourDuLich.Web.Controllers
{
    [DoanDuLichActionFilter]
    public class DoanDuLichController : Controller
    {
        public IBangDangKyService bangDangKyService { get; set; }
        public ITourService tourService { get; set; }
        public IThoiGianTourService thoiGianTourService { get; set; }
        public IDoanDuLichService doanDuLichService { get; set; }

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
                ViewBag.ThoiGianTourSelectList = new SelectList(thoiGianTourService.GetListTimeByTour(MaTour.Value), "MaThoiGian", "ThoiGian", MaThoiGianTour);
                ViewBag.DoanSelectList = new SelectList(doanDuLichService.GetAllListGroupTourByTime(MaThoiGianTour.Value), "MaDoanDuLich", "NoiDung");
                ViewBag.dsDangKy = bangDangKyService.GetAllListCheckInByTime(MaThoiGianTour.Value);
            }
            return View("LapDoanDuLich");
        }

        [Route("ghep-doan")]
        public ActionResult GhepDoan()
        {
            return View();
        }

        [Route("tao-doan")]
        [HttpGet]
        public ActionResult TaoDoan()
        {
            var listId = (List<int>)Session["listId"];
            var time = (int)Session["time"];
            Session["dsDangKy"] = bangDangKyService.GetAllListCheckInByListId(listId);
            Session["ThoiGianTour"] = thoiGianTourService.GetInfoByTimeId(time);

            Session.Remove("listId");
            Session.Remove("time");
            return View(new DoanDuLichViewModel());
        }

        [Route("tao-doan")]
        [HttpPost]
        public ActionResult TaoDoan(DoanDuLichViewModel doanDuLichVM)
        {
            if (ModelState.IsValid) {
                var doanDuLich = new DoanDuLich();
                doanDuLichVM.TinhTrang = Constants.TT_MOI_TAO;
                doanDuLich.UpdateDoanDuLich(doanDuLichVM);
                var dsNhanVien = new Dictionary<string, string>();
                dsNhanVien.Add(Constants.NV_HUONG_DAN_VIEN, doanDuLichVM.TenHuongDanVien);
                dsNhanVien.Add(Constants.NV_PHUC_VU, doanDuLichVM.TenPhucVu);
                dsNhanVien.Add(Constants.NV_TAI_XE, doanDuLichVM.TenTaiXe);
                dsNhanVien.Add(Constants.NV_THONG_DICH_VIEN, doanDuLichVM.TenThongDichVien);
                dsNhanVien.Add(Constants.NV_TIEN_TRAM, doanDuLichVM.TenTienTram);
                dsNhanVien.Add(Constants.NV_TRUONG_DOAN, doanDuLichVM.TenTruongDoan);
                var result = doanDuLichService.TaoDoanDuLich(doanDuLich, Session["dsDangKy"] as List<BangDangKy>, dsNhanVien);
                if(result.Success)
                {
                    TempData["Success"] = result.Message;
                    Session.Remove("dsDangKy");
                    Session.Remove("ThoiGianTour");
                    return RedirectToAction("LapDoanDuLich");
                }
                else
                {
                    TempData["Error"] = result.Message;
                }
            }
            return View();
        }

        [Route("luu-danh-sach-da-chon")]
        public JsonResult LuuDanhSachDaChecked(string listId, int time)
        {
            var sessionList = new List<int>(); 
            string[] dsId = listId.Split(';');
            for(int i= 0;i<dsId.Length-1;i++)
            {
                sessionList.Add(Int32.Parse(dsId[i].Trim()));
            }
            Session["listId"] = sessionList;
            Session["time"] = time;
            return Json(200, JsonRequestBehavior.AllowGet);
        }
    }
}