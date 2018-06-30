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
    public class EmployeeController : Controller
    {
        // GET: Employee
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult CreateEmp()
        {
            Employee EmpMaster = new Employee();
            EmpMaster.CountryList = new List<SelectListItem>();
            FillCountryList(ref EmpMaster);
            return View(EmpMaster);
        }
        public void FillCountryList(ref Employee EmpMaster)
        {
            EmpMaster.CountryList = new List<SelectListItem>();
            EmpMaster.CountryList.Add(new SelectListItem()
            {
                Text = Convert.ToString("Select Category"),
                Value = Convert.ToString("-1")
            });
            DataSet ds = EmployeeMasterBll.GetAllDropDownData("AllCountry");
            ds.Tables[0].TableName = "Country";


            if (ds != null)
            {
                if (ds.Tables.Count > 0 && ds.Tables[0].Rows.Count > 0)
                {
                    foreach (DataRow item in ds.Tables[0].Rows)
                    {
                        EmpMaster.CountryList.Add(new SelectListItem()
                        {
                            Text = Convert.ToString(item["CountryName"]),
                            Value = Convert.ToString(item["CountryId"])
                        });
                    }
                }

            }

        }
        [HttpPost]
        public ActionResult GetCityByStateeId(int Stateid)
        {
            Employee emp = new Employee();
            DataSet ds = new DataSet();
            ds=EmployeeMasterBll.GetCity(Stateid);
            //  emp.CityList=EmployeeMasterBll.get
            //objcity = GetAllCity().Where(m => m.StateId == stateid).ToList();
            //SelectList obgcity = new SelectList(objcity, "Id", "CityName", 0);
            //return Json(obgcity);
            return Json(ds);
        }

        // GET: Employee/Details/5
        public ActionResult Details(int id)
        {
            return View();
        }

        // GET: Employee/Create


        // POST: Employee/Create
        //  create Product
        [HttpPost]
        public JsonResult Create(Employee itemMasterVM)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var g = "none";
                    if(itemMasterVM.Gender=="true")
                    {
                        g = "Male";
                    }
                    else
                    {
                        g = "Female";
                    }
                    EmployeeMasterBll bll = new EmployeeMasterBll();

                    bll.EmployeeId = itemMasterVM.EmployeeId;
                    bll.EmployeeName = itemMasterVM.EmployeeName;
                    bll.JoiningDate = itemMasterVM.JoiningDate;
                    bll.Designation = itemMasterVM.Designation;
                    bll.Gender = itemMasterVM.Gender;
                    bll.Details = itemMasterVM.Details;
                    int dtResponse = 0;


                    dtResponse = bll.SaveItem();
                    if (dtResponse > 0)
                    {
                       // RedirectToAction("ProductList", "Employee");
                        return Json(new
                        {
                            ResponseStatus = "OK",
                            ResponseMessage = "Employee Saved Successfully!",
                            //   ResponseData = new { produ = Convert.ToString(dtResponse.Rows[0]["ProductId"]) }
                        });
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

        // GET: Employee/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Employee/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Employee/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Employee/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
