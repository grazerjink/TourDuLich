using System;
using System.Drawing;
using System.Threading;
using System.Windows.Forms;
using System.Windows.Forms.DataVisualization.Charting;
using TourDuLich.Service.Businesses;
using TourDuLich.Service.Commons;

namespace TourDuLich.Win.Controls
{
    public partial class TinhHinhHoatDong : UserControl
    {
        private IThongKeService thongKeService;
        private ITourService tourService;

        public TinhHinhHoatDong(IThongKeService thongKeService,
            ITourService tourService)
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
        private void LoadAllContent()
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

        private void btnKiemTra_Click(object sender, System.EventArgs e)
        {
            DateTime from = dateFrom.Value;
            DateTime to = dateTo.Value;
            int indexSelected = listTour.SelectedIndex;
            TinhHinhHoatDongViewModel dsThongKe = thongKeService.ThongKeTinhHinhHoatDongTheoTour(from, to, indexSelected);
            UpdateDataForChart(dsThongKe);
        }

        private void UpdateDataForChart(TinhHinhHoatDongViewModel dsThongKe)
        {
            chartTinhHinh.Series.Clear();

            chartTinhHinh.Series.Add("DoanhThu");
            chartTinhHinh.Series["DoanhThu"].ChartType = SeriesChartType.Column;
            chartTinhHinh.Series["DoanhThu"].LegendText = "Doanh thu";
            chartTinhHinh.Series["DoanhThu"].IsVisibleInLegend = true;

            chartTinhHinh.Series.Add("LoiNhuan");
            chartTinhHinh.Series["LoiNhuan"].ChartType = SeriesChartType.Column;
            chartTinhHinh.Series["LoiNhuan"].LegendText = "Lợi nhuận";
            chartTinhHinh.Series["LoiNhuan"].IsVisibleInLegend = true;
            if (dsThongKe.ThoiGianTours.Count >= 0)
            {
                for (int i = 0; i < dsThongKe.ThoiGianTours.Count; i++)
                {
                    string thoiGian = dsThongKe.ThoiGianTours[i];
                    double doanhThu = dsThongKe.DoanhThuTours[i];
                    double loiNhuan = dsThongKe.LoiNhuans[i];
                    string doanThamQuan = dsThongKe.DoanThamQuans[i];

                    DataPoint pointDoanhThu = new DataPoint();
                    pointDoanhThu.YValues[0] = doanhThu;
                    pointDoanhThu.IsValueShownAsLabel = true;
                    pointDoanhThu.AxisLabel = string.Format("Thời gian\n{0}\n{1}", thoiGian, doanThamQuan);
                    chartTinhHinh.Series["DoanhThu"].Points.Add(pointDoanhThu);
                    chartTinhHinh.Series["DoanhThu"].IsXValueIndexed = false;

                    DataPoint pointLoiNhuan = new DataPoint();
                    pointLoiNhuan.YValues[0] = loiNhuan;
                    pointLoiNhuan.IsValueShownAsLabel = true;
                    chartTinhHinh.Series["LoiNhuan"].Points.Add(pointLoiNhuan);
                }
            }
            else
            {
                MessageBox.Show("Tour du lịch chưa có trạng thái hoạt động nào !!!", "Thông báo");
            }
        }
    }
}