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
     public class ProductMasterBll
    {

        #region MyRegion
        #endregion

        #region Properties

        public int ProductId { get; set; }
        
        public string ProductName { get; set; }
        public int CategoryId { get; set; }
        public string Description { get; set; }
        public string Image { get; set; }
      

        #endregion

        #region Key Methods

        public DataSet GetAllItems()
        {
            return new SqlGeneric().ExecuteReaderDataSet("exec AllProduct");
        }

        public int SaveItem()
        {
            SqlCommand cmd = new SqlCommand()
            {
                CommandType = CommandType.StoredProcedure,
                CommandText = "usp_Product"
            };

            //auto product Id

           
            cmd.Parameters.Add(new SqlParameter("@ProductName",ProductName));
            cmd.Parameters.Add(new SqlParameter("@CategoryId", CategoryId));
            cmd.Parameters.Add(new SqlParameter("@Description", Description));
            cmd.Parameters.Add(new SqlParameter("@Image", Image));
            
            return new SqlGeneric().ExecuteNonQuery(cmd);

        }
        public int UpdateProduct()
        {
            SqlCommand cmd = new SqlCommand()
            {
                CommandType = CommandType.StoredProcedure,
                CommandText = "Up_Product"
            };

            //auto product Id

            cmd.Parameters.Add(new SqlParameter("@ProductId", ProductId));
            cmd.Parameters.Add(new SqlParameter("@ProductName", ProductName));
            cmd.Parameters.Add(new SqlParameter("@CategoryId", CategoryId));
            cmd.Parameters.Add(new SqlParameter("@Description", Description));
            cmd.Parameters.Add(new SqlParameter("@Image", Image));

            return new SqlGeneric().ExecuteNonQuery(cmd);

        }
        public DataSet GetItemByID(int ProductId)
        {
            SqlCommand cmd = new SqlCommand()
            {
                CommandType = CommandType.StoredProcedure,
                CommandText = "ProductById"
            };
       
            cmd.Parameters.Add(new SqlParameter("@ProductId", ProductId));
            return new SqlGeneric().ExecuteReaderDataSet(cmd);
        }

        public int DeleteItem(int ProductId)
        {
            SqlCommand cmd = new SqlCommand()
            {
                CommandType = CommandType.StoredProcedure,
                CommandText = "DelProduct"
            };
       
            cmd.Parameters.Add(new SqlParameter("@ProductId", ProductId));
            
            return (int)new SqlGeneric().ExecuteScalar(cmd);
        }
        public static DataSet GetAllDropDownData(string spName)
        {
            return new SqlGeneric().ExecuteReaderDataSet("exec " + spName );
        }


        #endregion
    }
}
