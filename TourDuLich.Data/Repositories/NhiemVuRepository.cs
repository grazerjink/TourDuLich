﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TourDuLich.Data.Infrastructure;

namespace TourDuLich.Data.Repositories
{
    public interface INhiemVuRepository : IRepository<NhiemVu>
    {
    }
    public class NhiemVuRepository : RepositoryBase<NhiemVu>, INhiemVuRepository
    {
        public NhiemVuRepository(IDbFactory dbFactory) : base(dbFactory)
        {
        }
    }
}
