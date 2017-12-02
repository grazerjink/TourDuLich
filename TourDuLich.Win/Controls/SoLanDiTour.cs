using System;
using System.Windows.Forms;
using TourDuLich.Service.Businesses;
using TourDuLich.Service.Commons;

namespace TourDuLich.Win.Controls
{
    public partial class SoLanDiTour : UserControl
    {
        private SoLanDiTourViewModel dsThongKe;
        private IThongKeService thongKeService;

        public SoLanDiTour(IThongKeService thongKeService)
        {
            this.thongKeService = thongKeService;
            InitializeComponent();
        }

        private void btnKiemTra_Click(object sender, System.EventArgs e)
        {
            DateTime from = dateFrom.Value;
            DateTime to = dateTo.Value;
            dsThongKe = thongKeService.ThongKeSoLanDiTour(from, to);
            tblNhanVien.DataSource = dsThongKe.ListNhanVien;
        }

        private void tblNhanVien_SelectionChanged(object sender, EventArgs e)
        {
            foreach (DataGridViewRow row in tblNhanVien.SelectedRows)
            {
                int maNhanVien = int.Parse(row.Cells[0].Value.ToString());
                for(int i=0; i<dsThongKe.ListNhanVien.Count; i++)
                {
                    if(dsThongKe.ListNhanVien[i].MaNhanVien == maNhanVien)
                    {
                        string soLanDi = dsThongKe.SoLanDi[i] + " lần";
                        lblSoLanDi.Text = soLanDi;
                        tblTour.DataSource = dsThongKe.ListDoanDaDi[i];
                        break;
                    }
                }
            }
        }
    }
}