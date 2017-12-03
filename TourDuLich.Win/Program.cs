using System;
using System.Windows.Forms;
using TourDuLich.Win.DI;
using TourDuLich.Win.Forms;

namespace TourDuLich.Win
{
    internal static class Program
    {
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        private static void Main()
        {
            CompositionRoot.Wire(new ApplicationModule());
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(CompositionRoot.Resolve<Dashboard>());
        }
    }
}