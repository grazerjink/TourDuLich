using System.Collections.Generic;

namespace TourDuLich.Service.Commons
{
    public class ThongKeChiPhiViewModel
    {
        public List<string> DanhSachThoiGianTour { get; set; }
        public List<double> ChiPhiKhachSans { get; set; }
        public List<double> ChiPhiAnUongs { get; set; }
        public List<double> ChiPhiPhuongTiens { get; set; }
        public List<double> ChiPhiPhatSinhs { get; set; }

        public double TongChiPhiKhachSan { get; set; }
        public double TongChiPhiAnUong { get; set; }
        public double TongChiPhiPhuongTien { get; set; }
        public double TongChiPhiPhatSinh { get; set; }
    }
}