//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace WcfServiceApp
{
    using System;
    using System.Collections.Generic;
    
    public partial class PHIM
    {
        public PHIM()
        {
            this.BAO_GOM = new HashSet<BAO_GOM>();
            this.XUAT_CHIEU = new HashSet<XUAT_CHIEU>();
        }
    
        public int ID { get; set; }
        public string Ten { get; set; }
        public string Dao_dien { get; set; }
        public string Dien_vien { get; set; }
        public string The_loai { get; set; }
        public string Phien_ban { get; set; }
        public string Hang_phim { get; set; }
        public string Nuoc_san_xuat { get; set; }
        public int Do_dai { get; set; }
        public string Poster { get; set; }
        public string Gioi_thieu { get; set; }
        public string Trailer { get; set; }
        public string PDF { get; set; }
    
        public virtual ICollection<BAO_GOM> BAO_GOM { get; set; }
        public virtual ICollection<XUAT_CHIEU> XUAT_CHIEU { get; set; }
    }
}