using Ninject.Modules;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;
using TourDuLich.Service.Businesses;

namespace TourDuLich.Win.DI
{
    public class ApplicationModule : NinjectModule
    {
        public override void Load()
        {
            // Binding factory
            Bind(typeof(IUnitOfWork)).To(typeof(UnitOfWork));
            Bind(typeof(IDbFactory)).To(typeof(DbFactory));

            // Binding repositories
            Bind(typeof(INhiemVuRepository)).To(typeof(NhiemVuRepository));

            // Binding services
            Bind(typeof(INhiemVuService)).To(typeof(NhiemVuService));
        }
    }
}