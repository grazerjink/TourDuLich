using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IPhanCongRepository : IRepository<PhanCong>
    {
    }

    public class PhanCongRepository : RepositoryBase<PhanCong>, IPhanCongRepository
    {
        public PhanCongRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}