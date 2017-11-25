using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IDoanDuLichRepository : IRepository<DoanDuLich>
    {
    }

    public class DoanDuLichRepository : RepositoryBase<DoanDuLich>, IDoanDuLichRepository
    {
        public DoanDuLichRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}