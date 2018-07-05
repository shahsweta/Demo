using PresentationLayer.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using BusinessLogicLayer;
using System.IO;
using System.Web.Script.Serialization;

namespace PresentationLayer.Controllers
{
    public class EmployeeController : Controller
    {
        public object javaScriptSerializer { get; private set; }

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
                Text = Convert.ToString("Select Country"),
                Value = Convert.ToString("0")
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
        public ActionResult GetCityByStateId(int StateId)
        {
            try
            {

                City emp = new City();
                DataSet ds = new DataSet();
                ds = EmployeeMasterBll.GetCity(StateId);
                List<City> citylist = new List<City>();
                if (ds != null)
                {
                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        citylist.Add(new City
                        {
                            CityId = Convert.ToInt32(dr["CityId"]),
                            CityName = Convert.ToString(dr["CityName"])
                        });
                    }
                }
                JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                string result = javaScriptSerializer.Serialize(citylist);
                return Json(result, JsonRequestBehavior.AllowGet);

            }
            catch (Exception)
            {
                throw;
            }
        }
        //  [Route("getstate/{CountryId

        [HttpPost]
        public ActionResult GetStateByCountryId(int CountryId)
        {
            try
            {
                State emp = new State();
                DataSet ds = new DataSet();
                ds = EmployeeMasterBll.GetSate(CountryId);
                List<State> statelist = new List<State>();
                if (ds != null)
                {

                    foreach (DataRow dr in ds.Tables[0].Rows)
                    {
                        statelist.Add(new State
                        {
                            StateId = Convert.ToInt32(dr["StateId"]),
                            StateName = Convert.ToString(dr["StateName"])
                        });
                    }
                }
                JavaScriptSerializer javaScriptSerializer = new JavaScriptSerializer();
                string result = javaScriptSerializer.Serialize(statelist);
                return Json(result, JsonRequestBehavior.AllowGet);
            }
            catch (Exception)
            {
                throw;
            }
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
        public ActionResult CreateEmp(Employee itemMasterVM)
        {
            try
            {
                if (ModelState.IsValid)
                {
                    var g = "none";
                    if (itemMasterVM.Gender == "1")
                    {
                        g = "Male";
                    }
                    else
                    {
                        g = "Female";
                    }
                    EmployeeMasterBll bll = new EmployeeMasterBll();

                    //   bll.EmployeeId = itemMasterVM.EmployeeId;
                    bll.EmployeeName = itemMasterVM.EmployeeName;
                    DateTime date = new DateTime();
                    date = Convert.ToDateTime(itemMasterVM.JoiningDate);
                    bll.JoiningDate = date;
                    bll.Designation = itemMasterVM.Designation;
                    bll.Gender = g;
                    bll.Details = itemMasterVM.Details;
                    bll.CityId = itemMasterVM.CityId;
                    bll.StateId = itemMasterVM.StateId;
                    bll.CountryId = itemMasterVM.CountryId;
                    int dtResponse = 0;
                    dtResponse = bll.SaveItem();
                    if (dtResponse > 0)
                    {
                        return Json(new
                        {
                            ResponseStatus = "OK",
                            ResponseMessage = "Employee Saved Successfully!",
                            //   ResponseData = new { produ = Convert.ToString(dtResponse.Rows[0]["ProductId"]) }
                        });
                    }
                }
                else
                {
                    itemMasterVM.CountryList = new List<SelectListItem>();
                    FillCountryList(ref itemMasterVM);


                    return View(itemMasterVM);
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
