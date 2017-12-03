using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IChiPhiPhuongTienRepository : IRepository<ChiPhiPhuongTien>
    {
    }

    public class ChiPhiPhuongTienRepository : RepositoryBase<ChiPhiPhuongTien>, IChiPhiPhuongTienRepository
    {
        public ChiPhiPhuongTienRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}