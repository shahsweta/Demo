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
    public class City
    {
        [Display(Name = "City")]
        public int CityId { get; set; }
        public string CityName { get; set; }
        public List<SelectListItem> CityList { get; set; }
    }
}