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
    
    public partial class DiaDiem
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public DiaDiem()
        {
            this.ChiTietDiaDiems = new HashSet<ChiTietDiaDiem>();
            this.TourDiemThamQuans = new HashSet<TourDiemThamQuan>();
        }
    
        public int MaDiaDiem { get; set; }
        public Nullable<int> MaTinhThanh { get; set; }
        public string TenDiaDiem { get; set; }
        public Nullable<bool> TrangThai { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ChiTietDiaDiem> ChiTietDiaDiems { get; set; }
        public virtual TinhThanh TinhThanh { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<TourDiemThamQuan> TourDiemThamQuans { get; set; }
    }
}
