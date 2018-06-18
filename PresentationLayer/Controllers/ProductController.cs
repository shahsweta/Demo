using PresentationLayer.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BusinessLogicLayer;
using System.IO;


namespace PresentationLayer.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    public class ProductController : Controller
    {
        // GET: CreateProduct

        public ActionResult Create()
        {
                Product itemMasterVM = new Product();
            if (!string.IsNullOrEmpty(Convert.ToString(Request.QueryString["eid"])) && !string.IsNullOrEmpty(Convert.ToString(Request.QueryString["id=Delete"])))
            {
                ProductMasterBll bl = new ProductMasterBll();
                int dtresponse;
               dtresponse =bl.DeleteItem((Convert.ToInt16(Request.QueryString["eid"])));
                if(dtresponse>0)
                {
                    RedirectToAction("ProductList", "Product");
                }              
            }
                if (!string.IsNullOrEmpty(Convert.ToString(Request.QueryString["eid"])))
            {
                ProductMasterBll bl = new ProductMasterBll();
                DataSet ds = new DataSet();

                ds = bl.GetItemByID(Convert.ToInt16(Request.QueryString["eid"]));
                itemMasterVM.ProductId = Convert.ToInt32(ds.Tables[0].Rows[0]["ProductId"]);
                itemMasterVM.ProductName = Convert.ToString(ds.Tables[0].Rows[0]["ProductName"]);
                itemMasterVM.CategoryId = Convert.ToInt32(ds.Tables[0].Rows[0]["CategoryId"]);
                itemMasterVM.Image = Convert.ToString(ds.Tables[0].Rows[0]["Image"]);
                itemMasterVM.Description = Convert.ToString(ds.Tables[0].Rows[0]["Description"]);

            }
            itemMasterVM.CategoryList = new List<SelectListItem>();
            FillCategoryList(ref itemMasterVM);

            return View(itemMasterVM);

        }
        /// <summary>
        /// 
        /// </summary>
        /// <param name="itemVM"></param>
        /// <returns></returns> 
        public void FillCategoryList(ref Product itemMasterVM)
        {
            itemMasterVM.CategoryList = new List<SelectListItem>();
            itemMasterVM.CategoryList.Add(new SelectListItem()
            {
                Text = Convert.ToString("Select Category"),
                Value = Convert.ToString("-1")
            });
            DataSet ds = ProductMasterBll.GetAllDropDownData("AllCategory");
            ds.Tables[0].TableName = "Category";


            if (ds != null)
            {
                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow item in ds.Tables[0].Rows)
                    {
                        itemMasterVM.CategoryList.Add(new SelectListItem()
                        {
                            Text = Convert.ToString(item["CategoryName"]),
                            Value = Convert.ToString(item["CategoryId"])
                        });
                    }
                }

            }

        }

        //  create Product
        [HttpPost]
        public JsonResult Create(Product itemMasterVM)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    ProductMasterBll bll = new ProductMasterBll();
                      bll.ProductId = itemMasterVM.ProductId;
                    bll.ProductName = itemMasterVM.ProductName;
                    bll.Image = itemMasterVM.Image;
                    bll.CategoryId = itemMasterVM.CategoryId;
                    bll.Description = itemMasterVM.Description;
                    int dtResponse = 0;
                    if (bll.ProductId>0)
                    {
                        dtResponse = bll.UpdateProduct();
                        if (dtResponse > 0)
                        {
                            RedirectToAction("ProductList", "Product");
                            return Json(new
                            {
                                ResponseStatus = "OK",
                                ResponseMessage = "Product Updated Successfully!",
                                //   ResponseData = new { produ = Convert.ToString(dtResponse.Rows[0]["ProductId"]) }
                            });
                        }
                    }
                    else
                    {

                        dtResponse = bll.SaveItem();
                        if (dtResponse > 0)
                        {
                            RedirectToAction("ProductList", "Product");
                            return Json(new
                            {
                                ResponseStatus = "OK",
                                ResponseMessage = "Product Saved Successfully!",
                                //   ResponseData = new { produ = Convert.ToString(dtResponse.Rows[0]["ProductId"]) }
                            });
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                ex.Message.ToString();
            }
            return Json(new
            {
                ResponseStatus = "OK",
                ResponseMessage = "Internal Server Error"
            });
        }
        [HttpPost]
        public JsonResult PostFile(HttpPostedFileBase file)
        {
            JsonResult retunJsonObj = null;

            if (file != null && file.ContentLength > 0)
                try
                {
                    string image = Path.GetFileName(file.FileName);
                    string path = Path.Combine(Server.MapPath("~/Images/"));
                    // ....if Images not exists create new folder code here
                    if (!Directory.Exists(path))
                    {
                        Directory.CreateDirectory(path);
                    }

                    //  file.SaveAs(image);

                    file.SaveAs(path + image);

                    //   itemMasterVM.Image = path + image;
                    ViewBag.Message = "Your message for success";
                    retunJsonObj = Json(new
                    {
                        ResponseStatus = "OK",
                        ResponseMessage = "File successfully Uploaded!",
                        ResponseData = new { FilePath = image }
                    });
                }
                catch (Exception ex)
                {
                    retunJsonObj = Json(new
                    {
                        ResponseStatus = "Internal Server Error",
                        ResponseMessage = ex.Message,
                        ResponseData = ex.ToString()
                    });
                    // ViewBag.Message = "ERROR:" + ex.Message.ToString();
                }
            else
            {
                ViewBag.Message = "Please select file";
            }
            return retunJsonObj;
        }
        /// <summary>
        /// 
        /// </summary>
        /// <returns></returns>

        public ActionResult ProductList()
        {
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

        public JsonResult Delete(int id)
        {
            Product itemMasterVM = new Product();
            if (id>0)
            {
                ProductMasterBll bl = new ProductMasterBll();
                int dtresponse;
                dtresponse = bl.DeleteItem(id);
                if (dtresponse > 0)
                {
                    RedirectToAction("ProductList", "Product");
                }
            }           
            return Json(new
            {
                ResponseStatus = "OK",
                ResponseMessage = "Product Deleted Successfully!",
                //   ResponseData = new { produ = Convert.ToString(dtResponse.Rows[0]["ProductId"]) }
            });
        }
    }
}

