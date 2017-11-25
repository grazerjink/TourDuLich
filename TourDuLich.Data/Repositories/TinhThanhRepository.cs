using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface ITinhThanhRepository : IRepository<TinhThanh>
    {
    }

    public class TinhThanhRepository : RepositoryBase<TinhThanh>, ITinhThanhRepository
    {
        public TinhThanhRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}