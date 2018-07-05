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
    public class State
    {
        [Display(Name = "State")]
        public string StateName { get; set; }
        public int StateId { get; set; }
        public List<SelectListItem> StateList { get; set; }

    }
}