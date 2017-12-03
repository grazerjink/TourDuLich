using AutoMapper;

namespace TourDuLich.Web.Mapping
{
    public class AutoMapperConfiguration
    {
        public static void Configure()
        {
            Mapper.Initialize(cfg => cfg.AddProfile<MappingProfile>());
        }
    }
}