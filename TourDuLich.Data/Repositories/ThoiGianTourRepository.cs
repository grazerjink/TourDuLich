using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IThoiGianTourRepository : IRepository<ThoiGianTour>
    {
    }

    public class ThoiGianTourRepository : RepositoryBase<ThoiGianTour>, IThoiGianTourRepository
    {
        public ThoiGianTourRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}