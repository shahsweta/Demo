using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.IO;
using BusinessLogicLayer;
namespace PresentationLayer.Controllers
{
    /// <summary>
    /// 
    /// </summary>
    public class FileUploadController : Controller
     {




        // GET: FileUpload
        //   public ActionResult Index()
        //  {
        //       return View();
        //   }


        [HttpPost]
        public JsonResult PostFile(string configKey)
        {
            JsonResult retunJsonObj = null;
            try
            {
                string savePath = Server.MapPath("~/Uploads/");
                string physicalFolderPath = Server.MapPath(savePath);
                var files = Request.Files;
                if (files.Count > 0)
                {
                    if (!Directory.Exists(physicalFolderPath))
                    {
                        Directory.CreateDirectory(physicalFolderPath);
                    }
                    string _FileName = Path.GetFileName(files[0].FileName);
                    files[0].SaveAs(Path.Combine(physicalFolderPath, System.DateTime.Now.ToString("ddMMyyyy-hhmmss") + Path.GetExtension(_FileName)));
                    savePath = VirtualPathUtility.Combine(savePath, _FileName);
                }
                retunJsonObj = Json(new
                {
                    ResponseStatus = "OK",
                    ResponseMessage = "File successfully Uploaded!",
                    ResponseData = new { FilePath = savePath }
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
            }
            return retunJsonObj;
        }
    }  

}