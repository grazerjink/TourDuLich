using System.Collections.Generic;
using TourDuLich.Data;

namespace TourDuLich.Service.Commons
{
    public class SoLanDiTourViewModel
    {
        public List<NhanVien> ListNhanVien { get; set; }
        public List<int> SoLanDi { get; set; }
        public List<List<DoanDuLich>> ListDoanDaDi { get; set; }
    }
}