using System;
using System.Linq;
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
                for (int i = 0; i < dsThongKe.ListNhanVien.Count; i++)
                {
                    if (dsThongKe.ListNhanVien[i].MaNhanVien == maNhanVien)
                    {
                        string soLanDi = dsThongKe.SoLanDi[i] + " lần";
                        lblSoLanDi.Text = soLanDi;
                        tblTour.DataSource = dsThongKe.ListDoanDaDi[i];
                        break;
                    }
                }
            }
        }

        private void txtSearch_TextChanged(object sender, EventArgs e)
        {
            string txt = txtSearch.Text.ToLower();
            try
            {
                tblNhanVien.DataSource = dsThongKe.ListNhanVien.ToList().Where(x => x.MaNhanVien.ToString().Contains(txt) ||
                                x.HoTen.ToLower().Contains(txt) ||
                                x.NgaySinh.Value.ToString("dd/MM/yyyy").Contains(txt) ||
                                x.SoDienThoai.Contains(txt) ||
                                x.CMND.Contains(txt) ||
                                x.DiaChi.ToLower().Contains(txt)).ToList();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.StackTrace);
                Console.WriteLine(ex.Message);
            }
        }
    }
}