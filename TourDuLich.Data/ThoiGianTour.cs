//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace TourDuLich.Data
{
    using System;
    using System.Collections.Generic;
    
    public partial class ThoiGianTour
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ThoiGianTour()
        {
            this.BangDangKies = new HashSet<BangDangKy>();
            this.DoanDuLiches = new HashSet<DoanDuLich>();
        }
    
        public int MaThoiGianTour { get; set; }
        public Nullable<int> MaTour { get; set; }
        public Nullable<System.DateTime> NgayDi { get; set; }
        public Nullable<System.DateTime> NgayVe { get; set; }
        public Nullable<bool> TrangThai { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<BangDangKy> BangDangKies { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DoanDuLich> DoanDuLiches { get; set; }
        public virtual Tour Tour { get; set; }
    }
}
