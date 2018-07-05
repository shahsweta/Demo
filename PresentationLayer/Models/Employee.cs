using BusinessLogicLayer;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
namespace PresentationLayer.Models
{
    public class Employee
    {
        public int EmployeeId { get; set; }
        [Required(ErrorMessage ="Name Required")]
        public string EmployeeName { get; set; }
        [Required (ErrorMessage ="Date Required")]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:MM/dd/yyyy}")]
        public DateTime? JoiningDate { get; set; }
        [Display(Name = "City")]
        public int CityId { get; set; }
        public string CityName { get; set; }
        public List<SelectListItem> CityList { get; set; }
        public string Designation { get; set; }
        
        public string Gender { get; set; }
        public string Details { get; set; }
        [Display(Name = "State")]
        public string StateName { get; set; }
        public int StateId { get; set; }
        public List<SelectListItem> StateList { get; set; }
        [Required]
        public int CountryId { get; set; }
        public string CountryName { get; set; }
        public List<SelectListItem> CountryList { get; set; }



    }
}
