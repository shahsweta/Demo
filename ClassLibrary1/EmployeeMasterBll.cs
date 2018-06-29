using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BusinessLogicLayer
{
    public class EmployeeMasterBll
    {
        #region Properties

        public int EmployeeId { get; set; }

        public string EmployeeName { get; set; }
        public DateTime? JoiningDate { get; set; }

        public string Designation { get; set; }
        public string Gender { get; set; }
        public string Details { get; set; }



        #endregion
        #region Key Method
        public int SaveItem()
        {
            SqlCommand cmd = new SqlCommand()
            {
                CommandType = CommandType.StoredProcedure,
                CommandText = "Add_Employee"
            };

            //auto product Id


            cmd.Parameters.Add(new SqlParameter("@EmployeeName", EmployeeName));
            cmd.Parameters.Add(new SqlParameter("@JoiningDate", JoiningDate));
            cmd.Parameters.Add(new SqlParameter("@Designation", Designation));
            cmd.Parameters.Add(new SqlParameter("@Gender", Gender));
            cmd.Parameters.Add(new SqlParameter("@Details", Details));

            return new SqlGeneric().ExecuteNonQuery(cmd);

        }
        public DataSet GetAllItems()
        {
            return new SqlGeneric().ExecuteReaderDataSet("AllProduct");
        }

        #endregion
    }
}
