using System;
using System.Linq;
using System.Windows.Forms;
using TourDuLich.Service.Businesses;

namespace TourDuLich.Win.Controls
{
    public partial class LapTourDuLich : UserControl
    {
        private ITourService tourService;

        public LapTourDuLich(ITourService tourService, string title)
        {
            this.tourService = tourService;
            InitializeComponent();
            tourService.GetAllListTour().ToList().ForEach(x =>
            {
                Console.WriteLine(x.TenTour);
            });
            Console.WriteLine("=============== " + title);
        }        

        private void btnExit_Click(object sender, EventArgs e)
        {
            Environment.Exit(0);
        }
    }
}