using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IChiPhiAnUongRepository : IRepository<ChiPhiAnUong>
    {
    }

    public class ChiPhiAnUongRepository : RepositoryBase<ChiPhiAnUong>, IChiPhiAnUongRepository
    {
        public ChiPhiAnUongRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}