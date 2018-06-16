using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace BusinessLogicLayer
{
    public class UserBll
    {
        #region Declarations
        SqlGeneric sql = null;
        SqlConnection con = null;
        #endregion
      
        public string UserName { get; set; }
        public string Password { get; set; }
        public string Email{ get; set; }
       
      
        public UserBll()
        {
            sql = new SqlGeneric();
        }

        public DataSet VerifyUserCredential()
        {
            SqlCommand cmd = new SqlCommand()
            {
                CommandType = CommandType.StoredProcedure,
                CommandText = "usp_Users"
            };
            cmd.Parameters.Add(new SqlParameter("@UserName", UserName));
            cmd.Parameters.Add(new SqlParameter("@Password", Password));
            cmd.Parameters.Add(new SqlParameter("@Email", Email));
            return sql.ExecuteReaderDataSet(cmd);
        }
    }
}
