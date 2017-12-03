using System;
using System.Drawing;
using System.Windows.Forms;
using TourDuLich.Win.Controls;
using TourDuLich.Win.DI;

namespace TourDuLich.Win.Forms
{
    public partial class Dashboard : Form
    {
        private string currentControl = "";
        public Dashboard()
        {
            InitializeComponent();
        }

        private void btnLapTourDuLich_Click(object sender, EventArgs e)
        {
            removeCurrentControl();
            currentControl = "LapDiaDiemTour";
            pnlContent.Controls.Add(CompositionRoot.Resolve<LapDiaDiemTour>());
        }

        private void btnXemGiaTour_Click(object sender, EventArgs e)
        {
            removeCurrentControl();
            currentControl = "XemGiaTour";
            pnlContent.Controls.Add(CompositionRoot.Resolve<XemGiaTour>());
        }

        private void btnDoanhThu_Click(object sender, EventArgs e)
        {
            removeCurrentControl();
            currentControl = "DoanhThu";
            pnlContent.Controls.Add(CompositionRoot.Resolve<DoanhThu>());
        }

        private void btnTinhHinh_Click(object sender, EventArgs e)
        {
            removeCurrentControl();
            currentControl = "TinhHinhHoatDong";
            pnlContent.Controls.Add(CompositionRoot.Resolve<TinhHinhHoatDong>());
        }

        private void btnSoLanDiTour_Click(object sender, EventArgs e)
        {
            removeCurrentControl();
            currentControl = "SoLanDiTour";
            pnlContent.Controls.Add(CompositionRoot.Resolve<SoLanDiTour>());
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void btnExit_Hover(object sender, EventArgs e)
        {
            btnExit.Cursor = Cursors.Hand;
            btnExit.ForeColor = Color.DarkBlue;
        }

        private void btnExit_Leave(object sender, EventArgs e)
        {
            btnExit.ForeColor = Color.RoyalBlue;
        }

        private void removeCurrentControl()
        {
            if(!currentControl.Equals(""))
            {
                foreach(Control ctrl in pnlContent.Controls)
                {
                    if(ctrl.Name.Equals(currentControl))
                    {
                        pnlContent.Controls.Remove(ctrl);
                        break;
                    }
                }
            }
        }
    }
}