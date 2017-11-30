using Ninject.Extensions.Conventions;
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
            Kernel.Bind(typeof(IUnitOfWork)).To(typeof(UnitOfWork)).InTransientScope();
            Kernel.Bind(typeof(IDbFactory)).To(typeof(DbFactory)).InTransientScope();

            // Binding repositories
            Kernel.Bind(x =>
            {
                x.FromAssemblyContaining(typeof(ITourRepository))
                 .SelectAllClasses()
                 .EndingWith("Repository")
                 .BindDefaultInterface();
            });

            // Binding services
            Kernel.Bind(x =>
            {
                x.FromAssemblyContaining(typeof(ITourService))
                 .SelectAllClasses()
                 .EndingWith("Service")
                 .BindDefaultInterface();
            });
            
        }
    }
}