using System;
using System.Windows.Forms;
using TourDuLich.Win.DI;

namespace TourDuLich.Win
{
    public static class Program
    {
        [STAThread]
        private static void Main()
        {
            CompositionRoot.Wire(new ApplicationModule());
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(CompositionRoot.Resolve<Form1>());
        }
    }
}