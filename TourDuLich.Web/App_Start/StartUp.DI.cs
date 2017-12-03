using Autofac;
using Autofac.Integration.Mvc;
using Microsoft.Owin;
using Owin;
using System.Reflection;
using System.Web.Mvc;
using TourDuLich.Data.Infrastructure;
using TourDuLich.Data.Repositories;
using TourDuLich.Service.Businesses;
using TourDuLich.Web.Filters;

[assembly: OwinStartup(typeof(TourDuLich.Web.App_Start.Startup))]

namespace TourDuLich.Web.App_Start
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            // For more information on how to configure your application, visit http://go.microsoft.com/fwlink/?LinkID=316888
            ConfigAutofac(app);
        }

        private void ConfigAutofac(IAppBuilder app)
        {
            var builder = new ContainerBuilder();

            builder.RegisterFilterProvider();
            builder.RegisterControllers(Assembly.GetExecutingAssembly()).PropertiesAutowired();

            builder.RegisterType<UnitOfWork>().As<IUnitOfWork>().InstancePerRequest();
            builder.RegisterType<DbFactory>().As<IDbFactory>().InstancePerRequest();

            // Repositories
            builder.RegisterAssemblyTypes(typeof(TourRepository).Assembly)
                .Where(t => t.Name.EndsWith("Repository"))
                .AsImplementedInterfaces().InstancePerRequest();

            // Services
            builder.RegisterAssemblyTypes(typeof(TourService).Assembly)
               .Where(t => t.Name.EndsWith("Service"))
               .AsImplementedInterfaces().InstancePerRequest();
            IContainer container = builder.Build();
            DependencyResolver.SetResolver(new AutofacDependencyResolver(container));
        }
    }
}