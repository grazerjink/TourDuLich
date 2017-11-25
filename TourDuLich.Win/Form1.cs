using System;
using System.Windows.Forms;
using TourDuLich.Service.Businesses;

namespace TourDuLich.Win
{
    public partial class Form1 : Form
    {
        private INhiemVuService nhiemVuService;
        private INhanVienService nhanVienService;

        public Form1(INhiemVuService nhiemVuService, INhanVienService nhanVienService)
        {
            this.nhiemVuService = nhiemVuService;
            this.nhanVienService = nhanVienService;
            InitializeComponent();
        }

        /// <summary>
        ///  Ví dụ demo thôi. Chứ không code dòng foreach trong form nha mọi người.
        ///  Đem hết code vào Service để code và xử lý nghiệp vụ OKIE !!!
        /// </summary>
        private void btnNhiemVu_Click(object sender, EventArgs e)
        {
            foreach (var nv in nhanVienService.GetAll())
            {
                Console.WriteLine(nv.HoTen);
            }
        }
    }
}