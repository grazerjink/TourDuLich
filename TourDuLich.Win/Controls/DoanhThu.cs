using System;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using TourDuLich.Service.Businesses;
using TourDuLich.Service.Commons;

namespace TourDuLich.Win.Controls
{
    public partial class DoanhThu : UserControl
    {
        private IThongKeService thongKeService;
        private ITourService tourService;

        public DoanhThu(IThongKeService thongKeService, ITourService tourService)
        {
            this.thongKeService = thongKeService;
            this.tourService = tourService;
            InitializeComponent();
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
                listTour.Items.AddRange(tourService.GetAllTourActiveName());
            }
            else
            {
                Invoke(new ThreadStart(LoadAllContent));
            }
            
        }

        private void btnKiemTra_Click(object sender, EventArgs e)
        {
            DateTime ngayBatDau = dateFrom.Value;
            DateTime ngayKetThuc = dateTo.Value;
            int[] indexTours = new int[listTour.SelectedIndices.Count];
            for (int i = 0; i < listTour.SelectedIndices.Count; i++)
            {
                indexTours[i] = listTour.SelectedIndices[i];
            }
            DoanhThuViewModel dsThongKe = thongKeService.ThongKeDoanhThuTourDuLich(ngayBatDau, ngayKetThuc, indexTours);
            if (dsThongKe != null)
            {
                UpdateDataForChart(dsThongKe);
            }
        }

        private void UpdateDataForChart(DoanhThuViewModel dsThongKe)
        {
            if (dsThongKe.TongDoanhThu != 0)
            {
                chartDoanhThu.Series.Clear();
                chartDoanhThu.Series.Add("DoanhThu");               
                for (int i = 0; i < dsThongKe.Count; i++)
                {
                    double percent = Math.Ceiling(dsThongKe.DoanhThu[i] * 100.0 / dsThongKe.TongDoanhThu);
                    DataPoint point = new DataPoint();
                    point.AxisLabel = string.Format("Doanh thu: {0}\nSL Khách: {1}", dsThongKe.DoanhThu[i].ToString("N0"), dsThongKe.SoLuongKhach[i]);
                    point.YValues[0] = percent;
                    point.LegendText = dsThongKe.TenTour[i];                           
                    chartDoanhThu.Series["DoanhThu"].ChartType = SeriesChartType.Pie;
                    chartDoanhThu.Series["DoanhThu"].Font = new Font(chartDoanhThu.Series["DoanhThu"].Font.FontFamily, 10, chartDoanhThu.Series["DoanhThu"].Font.Style, chartDoanhThu.Series["DoanhThu"].Font.Unit);
                    chartDoanhThu.Series["DoanhThu"].Points.Add(point);
                }
            }
            else
            {
                MessageBox.Show("Tour du lịch chưa có trạng thái hoạt động nào !!!", "Thông báo");
            }
        }
    }
}