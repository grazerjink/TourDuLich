using Ninject;
using Ninject.Modules;
using Ninject.Parameters;
using System.Collections.Generic;

namespace TourDuLich.Win.DI
{
    public class CompositionRoot
    {
        private static IKernel _ninjectKernel;

        public static void Wire(INinjectModule module)
        {
            _ninjectKernel = new StandardKernel(module);
        }

        public static T Resolve<T>(string[] paramNames = null, object[] values = null)
        {
            if(paramNames != null)
            {
                ConstructorArgument[] constructors = new ConstructorArgument[paramNames.Length];
                for(int i=0; i<paramNames.Length; i++)
                {
                    constructors[i] = new ConstructorArgument(paramNames[i], values[i]);
                }
                return _ninjectKernel.Get<T>(constructors);
            }
            else
            {
                return _ninjectKernel.Get<T>();
            }                
        }        
    }
}