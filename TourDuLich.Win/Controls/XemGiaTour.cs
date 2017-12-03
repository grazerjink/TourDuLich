using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;
using TourDuLich.Service.Businesses;
using TourDuLich.Service.Commons;

namespace TourDuLich.Win.Controls
{
    public partial class XemGiaTour : UserControl
    {
        private ITourService tourService;
        private List<TourViewModel> listTour;

        public XemGiaTour(ITourService tourService)
        {
            this.tourService = tourService;
            InitializeComponent();
        }

        private void BtnKiemTra_Click(object sender, System.EventArgs e)
        {
            DateTime ngayBatDau = dateFrom.Value;
            DateTime ngayKetThuc = dateTo.Value;
            listTour = tourService.LayDanhSachTourVoiGiaHienTai(ngayBatDau, ngayKetThuc);
            tblGiaTour.DataSource = listTour;
        }

        private void txtSearch_TextChanged(object sender, System.EventArgs e)
        {
            string txt = txtSearch.Text.ToLower();
            try
            {
                tblGiaTour.DataSource = listTour.Where(x => x.Gia.ToString().Contains(txt) ||
                                x.TenTour.ToLower().Contains(txt) ||
                                x.MaTour.ToString().ToLower().Contains(txt) ||
                                x.SoNgay.ToString().ToLower().Contains(txt) ||
                                x.SoDem.ToString().ToLower().Contains(txt) ||
                                x.TenLoaiHinh.ToLower().Contains(txt)).ToList();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}