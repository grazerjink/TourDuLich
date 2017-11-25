using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IKhachHangRepository : IRepository<KhachHang>
    {
    }

    public class KhachHangRepository : RepositoryBase<KhachHang>, IKhachHangRepository
    {
        public KhachHangRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}