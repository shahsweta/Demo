using BusinessLogicLayer;
using PresentationLayer.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading;
using System.Web;
using System.Web.Mvc;
using System.Xml;

namespace PresentationLayer.Controllers
{
    public class ExplorerController : Controller
    {
        // GET: Explorer
        public ActionResult LogOut()
        {
        
           
            return View();
        }
    }
}