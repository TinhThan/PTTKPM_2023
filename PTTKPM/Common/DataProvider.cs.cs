using System;
using System.Collections.Generic;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Xml;
using System.Windows.Forms;

namespace PTTKPM.Common
{
    class DataProvider
    {
        #region ConnectionString
        /// <summary>
        /// Chuỗi kết nối với Database
        /// </summary>
        public static String ConnectionString= $"Data Source=DESKTOP-42DU9CM\\TINHTHANDEV;Database=PTTKPM;Integrated Security=sspi;Trusted_Connection=True;TrustServerCertificate=True;";
        #endregion
        #region ExcuteQuery : Get
        public static DataTable executeQuery(string sql)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                try
                {
                    SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
                    adapter.Fill(dt);
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dt;
        }
        #endregion 
        #region EcuteNonquery : Insert, Delete, Update 
        /// <summary>
        /// Method Post thao tác trực tiếp với dữ liệu
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public static int executeNonQuery(string sql)
        {
            int n = 0;
            try
            {
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                try
                {
                    SqlCommand command = con.CreateCommand();
                    command.CommandText = sql;
                    n = command.ExecuteNonQuery();
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return n;
        }
        #endregion
        #region ExcuteQuery: Store Procedure
        /// <summary>
        /// Thao tác trực tiếp với Procedure trên Database
        /// </summary>
        /// <param name="nameProc"></param>
        /// <param name="para"></param>
        /// <returns></returns>
        public static DataTable executeStoreProcedureQuery(string nameProc, params SqlParameter[] para)
        {
            DataTable dt = new DataTable();
            try
            {
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                try
                {
                    SqlCommand command = new SqlCommand(nameProc, con);
                    command.CommandType = CommandType.StoredProcedure;
                    if (para != null)
                    {
                        foreach (SqlParameter p in para)
                            command.Parameters.Add(p);
                    }
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(dt);
                }
                catch (Exception)
                {

                    throw;
                }
                finally
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dt;
        }
        #endregion 
        #region ExcuteNonQuery : Store Procedure
        /// <summary>
        /// Thao tác trực tiếp với Procedure trên Database
        /// </summary>
        /// <param name="nameProc"></param>
        /// <param name="para"></param>
        /// <returns></returns>
        public static int executeStoreProcedureNonQuery(string nameProc, params SqlParameter[] para)
        {
            int n = 0;
            try
            {
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                try
                {
                    SqlCommand command = new SqlCommand(nameProc, con);
                    command.CommandType = CommandType.StoredProcedure;
                    if (para != null)
                    {
                        foreach (SqlParameter p in para)
                            command.Parameters.Add(p);
                    }
                    n = command.ExecuteNonQuery();
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return n;
        }
        #endregion

        #region ExecuteScalar : Store Procedure
        public static int ExecuteScalarProcedureNonQuery(string nameProc, params SqlParameter[] para)
        {
            int n = 0;
            try
            {
                SqlConnection con = new SqlConnection(ConnectionString);
                con.Open();
                try
                {
                    SqlCommand command = new SqlCommand(nameProc, con);
                    command.CommandType = CommandType.StoredProcedure;
                    if (para != null)
                    {
                        foreach (SqlParameter p in para)
                            command.Parameters.Add(p);
                    }
                    n = Convert.ToInt16(command.ExecuteScalar());
                }
                catch (SqlException ex)
                {
                    throw ex;
                }
                finally
                {
                    con.Close();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return n;
        }
        #endregion
    }
}
