using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface ILichTrinhRepository : IRepository<LichTrinh>
    {
    }

    public class LichTrinhRepository : RepositoryBase<LichTrinh>, ILichTrinhRepository
    {
        public LichTrinhRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}