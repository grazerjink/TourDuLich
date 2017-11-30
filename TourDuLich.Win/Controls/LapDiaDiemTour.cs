using System;
using System.Drawing;
using System.Windows.Forms;
using TourDuLich.Service.Businesses;

namespace TourDuLich.Win.Controls
{
    public partial class LapDiaDiemTour : UserControl
    {
        private ITourService tourService;

        public LapDiaDiemTour(ITourService tourService)
        {
            this.tourService = tourService;
            InitializeComponent();
        }

        private void btnExit_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }

        private void btnExit_Hover(object sender, EventArgs e)
        {
            btnExit.Cursor = Cursors.Hand;
            btnExit.BackColor = Color.DodgerBlue;
            btnExit.ForeColor = Color.White;
        }

        private void btnExit_Leave(object sender, EventArgs e)
        {
            btnExit.ForeColor = Color.RoyalBlue;
            btnExit.BackColor = Color.Transparent;
        }
    }
}