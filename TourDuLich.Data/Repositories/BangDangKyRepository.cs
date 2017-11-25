using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IBangDangKyRepository : IRepository<BangDangKy>
    {
    }

    public class BangDangKyRepository : RepositoryBase<BangDangKy>, IBangDangKyRepository
    {
        public BangDangKyRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}