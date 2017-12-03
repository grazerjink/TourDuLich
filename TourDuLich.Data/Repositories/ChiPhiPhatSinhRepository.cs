using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IChiPhiPhatSinhRepository : IRepository<ChiPhiPhatSinh>
    {
    }

    public class ChiPhiPhatSinhRepository : RepositoryBase<ChiPhiPhatSinh>, IChiPhiPhatSinhRepository
    {
        public ChiPhiPhatSinhRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}