//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace CopyOfShikshanSankraman.Models
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.Web;

    public partial class NewChitrakar_tbl
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "required..")]
        public string FullName { get; set; }
        [Required(ErrorMessage = "required..")]
        [EmailAddress(ErrorMessage = "Invalid Email Address")]
        public string EmailId { get; set; }
        [Required(ErrorMessage = "required..")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid Phone number")]
        public string MobileNo1 { get; set; }
        [Required(ErrorMessage = "required..")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid Phone number")]
        public string MobileNo2 { get; set; }
        [Required(ErrorMessage = "required..")]
        [RegularExpression("^[0-9]{12}$", ErrorMessage = "Not a valid AadharNo number")]
        public string AadharNo { get; set; }
        [Required(ErrorMessage = "required..")]
        public string ChitrachaVishay { get; set; }
        [Required(ErrorMessage = "required..")]
        public string ShaikshanikPatrata { get; set; }
        [Required(ErrorMessage = "required..")]
        public string KaryalayachaPrakar { get; set; }
        [Required(ErrorMessage = "required..")]
        public string VyavasayikSthan { get; set; }
        [Required(ErrorMessage = "required..")]
        public string ChitraPrakashanStatus { get; set; }
        [Required(ErrorMessage = "required..")]
        public string Anubhav { get; set; }
        [Required(ErrorMessage = "required..")]
        public string KaryaratSthal { get; set; }
        [Required(ErrorMessage = "required..")]
        public string PrakashitChitra { get; set; }
        [Required(ErrorMessage = "required..")]
        public string PrakashitKashyamadhe { get; set; }
        [Required(ErrorMessage = "required..")]
        public string Vishay { get; set; }
        [Required(ErrorMessage = "required..")]
        public string AavadichaVishay { get; set; }
        [Required(ErrorMessage = "required..")]
        public string Payment { get; set; }
       
        public string SamtiPatra { get; set; }
      
        public string Chitra { get; set; }

        public string Chitra2 { get; set; }
        public HttpPostedFileBase SamtiPatraF { get; set; }
        public HttpPostedFileBase ChitraF { get; set; }
        public HttpPostedFileBase Chitra2F { get; set; }
    }
}
