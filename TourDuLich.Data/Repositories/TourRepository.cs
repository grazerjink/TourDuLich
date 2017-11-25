using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface ITourRepository : IRepository<Tour>
    {
    }

    public class TourRepository : RepositoryBase<Tour>, ITourRepository
    {
        public TourRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}