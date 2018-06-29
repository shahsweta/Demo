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
        [Required]
        public string EmployeeName { get; set; }
        [Required]
        [DataType(DataType.Date)]
        [DisplayFormat(DataFormatString = "{0:MM/dd/yyyy}")]
        public DateTime? JoiningDate { get; set; }
        
        public string Designation { get; set; }
        [Required]
        public string Gender { get; set; }
        public string Details { get; set; }
    }
}
