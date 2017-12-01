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
            Kernel.Bind<IUnitOfWork>().To<UnitOfWork>().InSingletonScope();
            Kernel.Bind<IDbFactory>().To<DbFactory>().InSingletonScope();

            // Binding repositories
            Kernel.Bind(x =>
            {
                x.FromAssemblyContaining(typeof(ITourRepository))
                 .SelectAllClasses()
                 .EndingWith("Repository")
                 .BindAllInterfaces();
            });

            // Binding services
            Kernel.Bind(x =>
            {
                x.FromAssemblyContaining(typeof(ITourService))
                 .SelectAllClasses()
                 .EndingWith("Service")
                 .BindAllInterfaces();
            });
            
        }
    }
}