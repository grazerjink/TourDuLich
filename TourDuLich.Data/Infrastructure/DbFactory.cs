using System;

namespace TourDuLich.Data.Infrastructure
{
    public interface IDbFactory : IDisposable
    {
        TourDuLichEntities Init();
    }

    public class DbFactory : Disposable, IDbFactory
    {
        private TourDuLichEntities dbContext;

        public TourDuLichEntities Init()
        {
            return dbContext ?? (dbContext = new TourDuLichEntities());
        }

        protected override void DisposeCore()
        {
            if (dbContext != null)
                dbContext.Dispose();
        }
    }
}