using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface IQuocTichRepository : IRepository<QuocTich>
    {
    }

    public class QuocTichRepository : RepositoryBase<QuocTich>, IQuocTichRepository
    {
        public QuocTichRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}