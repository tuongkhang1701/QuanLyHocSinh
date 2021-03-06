//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace QuanLyHocSinhTHPT.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class LOP
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LOP()
        {
            this.PHANLOPs = new HashSet<PHANLOP>();
            this.PHANLOPs1 = new HashSet<PHANLOP>();
            this.PHANCONGs = new HashSet<PHANCONG>();
            this.DIEMSOes = new HashSet<DIEMSO>();
            this.KETQUAHOCKies = new HashSet<KETQUAHOCKY>();
        }

        public string MALOP { get; set; }
        [Display(Name = "Lớp")]
        public string TENLOP { get; set; }
        [Display(Name = "Khối lớp")]
        public string MAKHOI { get; set; }
        public string MANAMHOC { get; set; }
        public int SISO { get; set; }
        public string MAGIAOVIENCHUNHIEM { get; set; }

        public virtual GIAOVIEN GIAOVIEN { get; set; }
        public virtual KHOILOP KHOILOP { get; set; }
        public virtual NAMHOC NAMHOC { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHANLOP> PHANLOPs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHANLOP> PHANLOPs1 { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<PHANCONG> PHANCONGs { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<DIEMSO> DIEMSOes { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<KETQUAHOCKY> KETQUAHOCKies { get; set; }
    }
}
