using System;
using System.Collections.Generic;
using System.Threading;
using System.Windows.Forms;
using TourDuLich.Service.Businesses;
using TourDuLich.Service.Commons;

namespace TourDuLich.Win.Controls
{
    public partial class LapDiaDiemTour : UserControl
    {
        private ITourService tourService;
        private ITinhThanhService tinhThanhService;

        public LapDiaDiemTour(ITourService tourService, ITinhThanhService tinhThanhService)
        {
            this.tourService = tourService;
            this.tinhThanhService = tinhThanhService;
            InitializeComponent();
            lblStatus.Text = "";
            new Thread(() =>
            {
                Thread.Sleep(40);
                LoadAllContent();
            }).Start();
        }

        public void LoadAllContent()
        {
            if (!InvokeRequired)
            {
                drdTinhThanh.Items = tinhThanhService.GetAllStringName();
                drdTinhThanh.selectedIndex = 0;
                drdTourDuLich.Items = tourService.GetAllTourActiveName();
                drdTourDuLich.selectedIndex = 0;
            }
            else
            {
                Invoke(new ThreadStart(LoadAllContent));
            }
        }

        private void drdTinhThanh_OnItemSelected(object sender, EventArgs e)
        {
            int vt = drdTinhThanh.selectedIndex;
            listDiaDiem.Items.Clear();
            listDiaDiem.Items.AddRange(tinhThanhService.GetAllLocationNameByIndex(vt));
        }

        private void drdTourDuLich_OnItemSelected(object sender, EventArgs e)
        {
            RefreshTableContent();
        }

        private void RefreshTableContent()
        {
            lblStatus.Text = "";
            tblDiaDiem.Rows.Clear();
            var listIndex = tourService.LayDanhSachDiaDiemTheoTour(drdTourDuLich.selectedIndex);
            foreach(var info in listIndex)
            {
                tblDiaDiem.Rows.Add(new object[] { info.IndexDiaDiem, info.TenDiaDiem, info.IndexTinhThanh, info.TenTinhThanh, "Xóa" });
            }
        }

        private void btnAddSelected_Click(object sender, EventArgs e)
        {
            int indexTinhThanh = drdTinhThanh.selectedIndex;
            string tenTinhThanh = drdTinhThanh.selectedValue;
            foreach (int indexDiaDiem in listDiaDiem.SelectedIndices)
            {
                var tenDiaDiem = listDiaDiem.Items[indexDiaDiem].ToString();
                tblDiaDiem.Rows.Add(new object[] { indexDiaDiem, tenDiaDiem, indexTinhThanh, tenTinhThanh, "Xóa" });
            }
        }

        private void btnCancelAll_Click(object sender, EventArgs e)
        {
            RefreshTableContent();
        }

        private void tblDiaDiem_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.ColumnIndex == tblDiaDiem.Columns["Xoa"].Index && e.RowIndex >= 0)
            {
                tblDiaDiem.Rows.RemoveAt(e.RowIndex);
            }
        }

        private void btnXacNhan_Click(object sender, EventArgs e)
        {
            List<IndexInfo> listIndexInfo = new List<IndexInfo>();
            var data = tblDiaDiem.Rows;
            for (int i = 0; i < data.Count; i++)
            {
                listIndexInfo.Add(new IndexInfo()
                {
                    IndexDiaDiem = (int)data[i].Cells[0].Value,
                    IndexTinhThanh = (int)data[i].Cells[2].Value
                });
            }
            if (tourService.LapDanhSachDiaDiem(listIndexInfo, drdTourDuLich.selectedIndex))
            {
                RefreshTableContent();
                lblStatus.Text = "Tạo danh sách điểm tham quan thành công.";
            }
        }
    }
}