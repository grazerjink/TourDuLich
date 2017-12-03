using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IChiTietDiaDiemRepository : IRepository<ChiTietDiaDiem>
    {
    }

    public class ChiTietDiaDiemRepository : RepositoryBase<ChiTietDiaDiem>, IChiTietDiaDiemRepository
    {
        public ChiTietDiaDiemRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}