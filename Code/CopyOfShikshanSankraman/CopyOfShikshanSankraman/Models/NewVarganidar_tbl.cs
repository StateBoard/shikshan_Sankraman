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

    public partial class NewVarganidar_tbl
    {
        public int Id { get; set; }
        [Required(ErrorMessage = "required..")]
        public string Surname { get; set; }
        [Required(ErrorMessage = "required..")]
        public string Name { get; set; }
        [Required(ErrorMessage = "required..")]
        public string FatherName { get; set; }
        [Required(ErrorMessage = "required..")]
        public string GharNav { get; set; }
        [Required(ErrorMessage = "required..")]
        public string RoadName { get; set; }
        [Required(ErrorMessage = "required..")]
        public string NearMark { get; set; }
        [Required(ErrorMessage = "required..")]
        public string CityName { get; set; }
        [Required(ErrorMessage = "required..")]
        public string Taluka { get; set; }
        [Required(ErrorMessage = "required..")]
        public string Jhila { get; set; }
        [Required(ErrorMessage = "required..")]
        [RegularExpression("^[0-9]{6}$", ErrorMessage = "Not a valid Pincode number")]
        public string PincodeNo { get; set; }
        [Required(ErrorMessage = "required..")]
        [EmailAddress(ErrorMessage = "Invalid Email Address")]
        public string Email { get; set; }
        [Required(ErrorMessage = "required..")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid Phone number")]
        public string MobileNo1 { get; set; }
        [Required(ErrorMessage = "required..")]
        [DataType(DataType.PhoneNumber)]
        [RegularExpression(@"^\(?([0-9]{3})\)?[-. ]?([0-9]{3})[-. ]?([0-9]{4})$", ErrorMessage = "Not a valid Phone number")]
        public string MobileNo2 { get; set; }
        [Required(ErrorMessage = "required..")]
        public string VarganiDate { get; set; }
        [Required(ErrorMessage = "required..")]
        [RegularExpression("^[0-9]{12}$", ErrorMessage = "Not a valid AadharNo number")]
        public string AadharCardNo { get; set; }
        [Required(ErrorMessage = "required..")]
        public string MonthStart { get; set; }
        [Required(ErrorMessage = "required..")]
        public string MonthEnd { get; set; }
        [Required(ErrorMessage = "required..")]
        public string Photo { get; set; }
        [Required(ErrorMessage = "required..")]
        public string Varagani { get; set; }
        public string Ip_Address { get; set; }
        public Nullable<System.DateTime> Date_Time { get; set; }
    }
}
