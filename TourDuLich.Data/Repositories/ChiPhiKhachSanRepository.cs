using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IChiPhiKhachSanRepository : IRepository<ChiPhiKhachSan>
    {
    }

    public class ChiPhiKhachSanRepository : RepositoryBase<ChiPhiKhachSan>, IChiPhiKhachSanRepository
    {
        public ChiPhiKhachSanRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}