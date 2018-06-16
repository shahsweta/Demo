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
    public class DashboardController : Controller
    {
        // GET: Dashboard
        public ActionResult Index()
        {
            if (HttpContext.Session["UserName"] == null || string.IsNullOrEmpty(Convert.ToString(HttpContext.Session["Email"])))
            {
                return RedirectToAction("Index", "User");
            }
            else
            {
                //    ViewBag.MenuList = GenerateMenus();
                ViewBag.UserFullName = Convert.ToString(HttpContext.Session["UserName"]);
            }

            return View();
            
        }
    }
}