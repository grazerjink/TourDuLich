using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface ITourDiemThamQuanRepository : IRepository<TourDiemThamQuan>
    {
    }

    public class TourDiemThamQuanRepository : RepositoryBase<TourDiemThamQuan>, ITourDiemThamQuanRepository
    {
        public TourDiemThamQuanRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}