using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IGiaTourRepository : IRepository<GiaTour>
    {
    }

    public class GiaTourRepository : RepositoryBase<GiaTour>, IGiaTourRepository
    {
        public GiaTourRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}