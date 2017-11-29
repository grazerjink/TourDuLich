using System.Collections.Generic;
using System.Web.Mvc;
using TourDuLich.Data;
using TourDuLich.Service.Businesses;
using System.Linq;

namespace TourDuLich.Web.Controllers
{
    [RoutePrefix("api")]
    public class ApiController : Controller
    {
        public IThoiGianTourService thoiGianTourService { get; set; }
        public INhanVienService nhanVienService { get; set; }

        [Route("lay-thoi-gian-tour")]
        public JsonResult LayThoiGianTheoTour(int MaTour)
        {
            return Json(thoiGianTourService.GetListTimeByTour(MaTour), JsonRequestBehavior.AllowGet);
        }

        [Route("lay-danh-sach-nhan-vien")]
        public JsonResult LayDanhSachNhanVien()
        {
            var listNhanVien = nhanVienService.GetAll().ToList();
            var listData = new List<string>();
            listNhanVien.ForEach(x => {
                listData.Add(x.HoTen);
            });
            return Json(listData, JsonRequestBehavior.AllowGet);
        }
    }
}