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
    public class SqlGeneric
    {
        #region Declarations
        SqlConnection con = null;
        #endregion

        #region Constructors
        public SqlGeneric()
        {
            con = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["ConStr"].ConnectionString);
        }
        #endregion

        #region ExecuteReaderDataSet

        public DataSet ExecuteReaderDataSet(string query)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            try
            {
                adp.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            //finally
            //{
            //    con.Close();
            //    con.Dispose();
            //    adp.Dispose();
            //}
        }

        public DataSet ExecuteReaderDataSet(SqlCommand cmd)
        {
            cmd.Connection = con;

            DataSet ds = new DataSet();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);

            try
            {
                adp.Fill(ds);
                return ds;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            //finally
            //{
            //    con.Close();
            //    con.Dispose();
            //    adp.Dispose();
            //}
        }

        #endregion

        #region ExecuteReaderDataTable

        public DataTable ExecuteReaderDataTable(string query)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(query, con);
            try
            {
                adp.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            //finally
            //{
            //    con.Close();
            //    con.Dispose();
            //    adp.Dispose();
            //}
        }

        public DataTable ExecuteReaderDataTable(SqlCommand cmd)
        {
            cmd.Connection = con;

            DataTable dt = new DataTable();
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            try
            {
                adp.Fill(dt);
                return dt;
            }
            catch (Exception ex)
            {
                throw ex;
            }
            //finally
            //{
            //    con.Close();
            //    con.Dispose();
            //    adp.Dispose();
            //}
        }

        #endregion

        #region ExecuteScaler

        public object ExecuteScalar(string query)
        {
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                con.Open();
                return cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            //finally
            //{
            //    con.Close();
            //    con.Dispose();
            //    cmd.Dispose();
            //}
        }

        public object ExecuteScalar(SqlCommand cmd)
        {
            cmd.Connection = con;

            try
            {
                con.Open();
                return cmd.ExecuteScalar();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            //finally
            //{
            //    con.Close();
            //    con.Dispose();
            //    cmd.Dispose();
            //}
        }

        #endregion

        #region ExecuteNonQuery

        public int ExecuteNonQuery(string query)
        {
            SqlCommand cmd = new SqlCommand(query, con);
            try
            {
                con.Open();
                return cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            //finally
            //{
            //    con.Close();
            //    con.Dispose();
            //    cmd.Dispose();
            //}
        }

        public int ExecuteNonQuery(SqlCommand cmd)
        {
            cmd.Connection = con;

            try
            {
                con.Open();
                return cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                throw ex;
            }
            //finally
            //{
            //    con.Close();
            //    con.Dispose();
            //    cmd.Dispose();
            //}
        }

        #endregion
    }
}
