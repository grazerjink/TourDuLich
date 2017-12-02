using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using TourDuLich.Service.Businesses;

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
            var listNhanVien = nhanVienService.GetAllListNhanVien().ToList();
            var listData = new List<string>();
            listNhanVien.ForEach(x =>
            {
                listData.Add(x.HoTen);
            });
            return Json(listData, JsonRequestBehavior.AllowGet);
        }
    }
}