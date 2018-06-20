using PresentationLayer.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BusinessLogicLayer;
using System.IO;
using System.Web.Helpers;


namespace PresentationLayer.Controllers
{
    public class ProductListController : Controller
    {
        // GET: ProductList
        public ActionResult Index()
        {
            if (HttpContext.Session["UserName"] == null || string.IsNullOrEmpty(Convert.ToString(HttpContext.Session["Email"])))
            {
                return RedirectToAction("Index", "User");
            }
            else
            {
                //    ViewBag.MenuList = GenerateMenus();
                ViewBag.UserName = Convert.ToString(HttpContext.Session["UserName"]);
                ViewBag.Email = Convert.ToString(HttpContext.Session["Email"]);
            }

            return View();
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>
        [HttpGet]
        public JsonResult LoadData()
        {
            try
            {
                // get allProduct
                ProductMasterBll bll = new ProductMasterBll();
                DataSet ds = bll.GetAllItems();

                //---------           

                DataTable dtGrid = new DataTable();
                //Users objUser = new Users();
                dtGrid = ds.Tables[0];
                List<Product> Gridd = new List<Product>();
                foreach (DataRow dr in dtGrid.Rows)
                {
                    Product Pro = new Product();
                    Pro.ProductId = Convert.ToInt32(dr["ProductId"]);

                    Pro.ProductName = dr["ProductName"].ToString();
                    Pro.CategoryName = dr["CategoryName"].ToString();
                    Pro.Image = dr["Image"].ToString();
                    Pro.Description = dr["Description"].ToString();
                    Gridd.Add(Pro);

                }
                return Json(Gridd, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                throw;
            }

        }
    }
}