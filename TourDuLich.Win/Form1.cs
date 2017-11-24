using System;
using System.Windows.Forms;
using TourDuLich.Service.Businesses;
using TourDuLich.Win.DI;

namespace TourDuLich.Win
{
    public partial class Form1 : Form
    {
        private INhiemVuService nhiemVuService;

        public Form1(INhiemVuService nhiemVuService)
        {
            this.nhiemVuService = nhiemVuService;
            InitializeComponent();
        }

        private void btnNhiemVu_Click(object sender, System.EventArgs e)
        {
            CompositionRoot.Resolve<Form2>().Show();
        }
    }
}