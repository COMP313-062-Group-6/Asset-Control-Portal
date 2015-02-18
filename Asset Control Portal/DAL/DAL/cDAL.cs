using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class cDAL
    {
        private SqlConnection con;

        public bool CreateConnection(string conStr)
        {
            con = new SqlConnection();

            con.ConnectionString = conStr;
            try
            {
                con.Open();
                return (true);
            }
            catch (Exception ex)
            {
                return (false);
            }


        }

        public void CloseConnection()
        {
            if (con != null)
            {
                if (con.State == ConnectionState.Open)
                {
                    con.Close();
                    con.Dispose();
                    con = null;
                }
            }

        }

        public DataTable GetTableData(string ProcedureName)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = ProcedureName;
            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            DataTable tb = new DataTable();
            adp.Fill(tb);
            return (tb);
        }

        public int ExecuteProcedure(string ProcedureName, params string[] arguments)
        {
            int retValue = 0;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = ProcedureName;
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                for (int i = 0; i < arguments.Length; i = i + 2)
                {
                    SqlParameter p1 = new SqlParameter();
                    p1.ParameterName = arguments[i];
                    p1.Value = arguments[i + 1];
                    cmd.Parameters.Add(p1);
                }

                retValue = cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                retValue = -1;
            }

            return (retValue);
        }

        public int ExecuteProcedure(string ProcedureName, bool IsOutParameter, string OutParameterName, params string[] arguments)
        {
            int retValue = 0;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = ProcedureName;
            cmd.CommandType = CommandType.StoredProcedure;
            try
            {
                for (int i = 0; i < arguments.Length; i = i + 2)
                {
                    SqlParameter p1 = new SqlParameter();
                    p1.ParameterName = arguments[i];
                    p1.Value = arguments[i + 1];
                    cmd.Parameters.Add(p1);
                }

                SqlParameter param1 = new SqlParameter();
                param1.ParameterName = OutParameterName;
                param1.Direction = ParameterDirection.Output;
                param1.DbType = DbType.Int32;
                cmd.Parameters.Add(param1);


                retValue = cmd.ExecuteNonQuery();

                retValue = Convert.ToInt32 ( param1.Value);
            }


            catch (Exception ex)
            {
                retValue = -1;
            }

            return (retValue);
        }


        public DataTable GetTableData(string ProcedureName, string ParameterName, int KeyValue)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = ProcedureName;
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = new SqlParameter();
            p1.ParameterName = ParameterName;
            p1.Value = KeyValue;

            cmd.Parameters.Add(p1);

            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            DataTable tb = new DataTable();
            adp.Fill(tb);
            return (tb);
        }
        public DataTable GetTableData(string ProcedureName, bool Flexible, params string[] arguments)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = ProcedureName;

            for (int i = 0; i < arguments.Length; i = i + 2)
            {
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = arguments[i];
                p1.Value = arguments[i + 1];
                cmd.Parameters.Add(p1);
            }

            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            DataTable tb = new DataTable();
            adp.Fill(tb);
            return (tb);
        }
        public DataTable GetTableData(string ProcedureName, string ParameterName, string KeyValue)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = ProcedureName;
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = new SqlParameter();
            p1.ParameterName = ParameterName;
            p1.Value = KeyValue;

            cmd.Parameters.Add(p1);

            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            DataTable tb = new DataTable();
            adp.Fill(tb);
            return (tb);
        }

        public DataTable GetTableData(string procedureName, string ParameterName1, string value1, string ParameterName2, int value2)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = procedureName;
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = new SqlParameter();
            p1.ParameterName = ParameterName1;
            p1.Value = value1;

            SqlParameter p2 = new SqlParameter();
            p2.ParameterName = ParameterName2;
            p2.Value = value2;

            cmd.Parameters.Add(p1);
            cmd.Parameters.Add(p2);
            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            DataTable tb = new DataTable();
            adp.Fill(tb);
            return(tb);
        }

        public DataTable GetTableData(string procedureName, string ParameterName1, int value1, string ParameterName2, int value2)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = procedureName;
            cmd.CommandType = CommandType.StoredProcedure;

            SqlParameter p1 = new SqlParameter();
            p1.ParameterName = ParameterName1;
            p1.Value = value1;

            SqlParameter p2 = new SqlParameter();
            p2.ParameterName = ParameterName2;
            p2.Value = value2;

            cmd.Parameters.Add(p1);
            cmd.Parameters.Add(p2);
            SqlDataAdapter adp = new SqlDataAdapter();
            adp.SelectCommand = cmd;
            DataTable tb = new DataTable();
            adp.Fill(tb);
            return (tb);
        }
        
    }
}
