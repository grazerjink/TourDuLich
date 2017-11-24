using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TourDuLich.Service.Businesses;

namespace TourDuLich.Win
{
    public partial class Form2 : Form
    {
        private INhiemVuService nhiemVuService;

        public Form2(INhiemVuService nhiemVuService)
        {
            this.nhiemVuService = nhiemVuService;
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            foreach (var nhiemVu in nhiemVuService.GetAll())
            {
                Console.WriteLine("- " + nhiemVu.TenNhiemVu);
            }
        }
    }
}
