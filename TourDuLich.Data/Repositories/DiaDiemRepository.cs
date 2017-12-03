using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IDiaDiemRepository : IRepository<DiaDiem>
    {
    }

    public class DiaDiemRepository : RepositoryBase<DiaDiem>, IDiaDiemRepository
    {
        public DiaDiemRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}