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
    public class Product
    {
        public int ProductId { get; set; }
      [Required]
        public string ProductName { get; set; }
        [Required]
        public string CategoryName { get; set; }
        public int CategoryId { get; set; }
        public List<SelectListItem> CategoryList { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
        public List<SelectListItem> ProductList { get; set; }

    }
}