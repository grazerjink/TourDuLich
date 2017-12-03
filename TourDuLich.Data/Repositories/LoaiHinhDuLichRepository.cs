using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface ILoaiHinhDuLichRepository : IRepository<LoaiHinhDuLich>
    {
    }

    public class LoaiHinhDuLichRepository : RepositoryBase<LoaiHinhDuLich>, ILoaiHinhDuLichRepository
    {
        public LoaiHinhDuLichRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}