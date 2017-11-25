using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface INhanVienRepository : IRepository<NhanVien>
    {
    }

    public class NhanVienRepository : RepositoryBase<NhanVien>, INhanVienRepository
    {
        public NhanVienRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}