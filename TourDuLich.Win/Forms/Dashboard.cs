using System;
using System.Windows.Forms;
using TourDuLich.Win.Controls;
using TourDuLich.Win.DI;

namespace TourDuLich.Win.Forms
{
    public partial class Dashboard : Form
    {
        public Dashboard()
        {
            InitializeComponent();
        }

        private void btnLapTourDuLich_Click(object sender, EventArgs e)
        {
            pnlContent.Controls.Clear();
            pnlContent.Controls.Add(CompositionRoot.Resolve<LapDiaDiemTour>());
        }

        private void btnXemGiaTour_Click(object sender, EventArgs e)
        {
            pnlContent.Controls.Clear();
            pnlContent.Controls.Add(CompositionRoot.Resolve<XemGiaTour>());
        }

        private void btnDoanhThu_Click(object sender, EventArgs e)
        {
            pnlContent.Controls.Clear();
            pnlContent.Controls.Add(CompositionRoot.Resolve<DoanhThu>());
        }

        private void btnTinhHinh_Click(object sender, EventArgs e)
        {
            pnlContent.Controls.Clear();
            pnlContent.Controls.Add(CompositionRoot.Resolve<TinhHinhHoatDong>());
        }

        private void btnSoLanDiTour_Click(object sender, EventArgs e)
        {
            pnlContent.Controls.Clear();
            pnlContent.Controls.Add(CompositionRoot.Resolve<SoLanDiTour>());
        }
    }
}