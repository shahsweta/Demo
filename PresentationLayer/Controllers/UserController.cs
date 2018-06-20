using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BusinessLogicLayer;
using PresentationLayer.Models;
using System.Data;



namespace PresentationLayer.Controllers
{
    public class UserController : Controller
    {
        // GET: Default

        // GET: Login
        /// <summary>
        public ActionResult Index()
        {
            if (HttpContext.Session["UserName"] == null || string.IsNullOrEmpty(Convert.ToString(HttpContext.Session["Email"])))
            {
                
            }
            else
            {
                return RedirectToAction("Index", "Dashboard");
            }
                return View();
        }
        /// </summary>
        /// <returns></returns>
        [HttpPost]
        public ActionResult Index(DefaultViewModel defaultModel)
        {

            if (HttpContext.Session["UserName"] == null || string.IsNullOrEmpty(Convert.ToString(HttpContext.Session["Email"])))
            {
                try
                {
                    UserBll userBLL = new UserBll()
                    {
                        UserName = defaultModel.Username,
                        Email = defaultModel.Email,
                        Password = defaultModel.Password
                    };

                    DataSet ds = userBLL.VerifyUserCredential();
                    if (ds != null && ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                    {
                        //     string FullName = Convert.ToString(ds.Tables[0].Rows[0]["FirstName"]) + Convert.ToString(ds.Tables[0].Rows[0]["LastName"]);
                        HttpContext.Session["UserName"] = Convert.ToString(ds.Tables[0].Rows[0]["UserName"]);
                        HttpContext.Session["Password"] = Convert.ToString(ds.Tables[0].Rows[0]["Password"]);
                        HttpContext.Session["Email"] = Convert.ToString(ds.Tables[0].Rows[0]["Email"]);
                        ViewBag.UserName = Convert.ToString(ds.Tables[0].Rows[0]["UserName"]);
                        ViewBag.Email = Convert.ToString(ds.Tables[0].Rows[0]["Email"]);
                        return RedirectToAction("Index", "Dashboard");
                    }
                    else
                    {

                        ViewBag.ErrorMsg = "Invalid login attempt.";
                        return View();
                    }
                }
                catch (Exception ex)
                {
                    ViewBag.ErrorMsg = "Something went wrong." + ex.ToString();
                    return View();
                }
            }
            else
            {
                return RedirectToAction("Index", "Dashboard");
            }
        }

        public ActionResult LogOut()
        {
            HttpContext.Session["UserName"] = null;
            HttpContext.Session["Email"] = null;
            HttpContext.Session.RemoveAll();
            ViewBag.UserName = "";
            ViewBag.Email = "";
            if (HttpContext.Session["UserName"] == null || string.IsNullOrEmpty(Convert.ToString(HttpContext.Session["Email"])))
            {
                return RedirectToAction("LogOut", "Explorer");
            }
            else
            {
                //    ViewBag.MenuList = GenerateMenus();
                ViewBag.UserName = Convert.ToString(HttpContext.Session["UserName"]);
            }

            return View();

        }

    }
}