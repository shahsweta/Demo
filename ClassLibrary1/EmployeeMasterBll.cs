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
        public int CityId { get; set; }
        public int StateId { get; set; }
        public int CountryId { get; set; }


        #endregion
        #region Key Method

        public DataSet GetAllEmployee()
        {
            return new SqlGeneric().ExecuteReaderDataSet("exec AllEmployee");
        }
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
            cmd.Parameters.Add(new SqlParameter("@CityId", CityId));
            cmd.Parameters.Add(new SqlParameter("@StateId", StateId));
            cmd.Parameters.Add(new SqlParameter("@CountryId", CountryId));
            return new SqlGeneric().ExecuteNonQuery(cmd);

        }
        
        public static DataSet GetAllDropDownData(string spName)
        {
            return new SqlGeneric().ExecuteReaderDataSet("exec " + spName);
        }
        public static DataSet GetSate(int CountryId)
        {
            SqlCommand cmd = new SqlCommand()
            {
                CommandType = CommandType.StoredProcedure,
                CommandText = "AllState"
            };

            cmd.Parameters.Add(new SqlParameter("@CountryId", CountryId));
            return new SqlGeneric().ExecuteReaderDataSet(cmd);
        }

        public static DataSet GetCity(int StateId)
        {
            SqlCommand cmd = new SqlCommand()
            {
                CommandType = CommandType.StoredProcedure,
                CommandText = "AllCity"
                
            };            
            cmd.Parameters.Add(new SqlParameter("@StateId", StateId));
            return new SqlGeneric().ExecuteReaderDataSet(cmd);
        }

        #endregion
    }
}
