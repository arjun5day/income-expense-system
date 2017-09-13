using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace OIMS.BLogic
{
    public class User

    {/*
        public DataTable CheckUser(string UID, string PWD)
        {
            GConnection gc = new GConnection();
            string strData = "Select * From tbl_user Where user_name='" + UID + "' And Password='" + PWD + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);

            DataSet ds = new DataSet();

            da.Fill(ds);

            return ds.Tables[0];
          

        }
        */

        public DataTable CheckUser(string user_name, string password)
        {
            GConnection gc = new GConnection();
            SqlCommand scm = new SqlCommand();
            scm.Connection = gc.cn;
            scm.CommandType = CommandType.StoredProcedure;
            scm.CommandText = "sp_CheckUser";
            scm.Parameters.AddWithValue("@user_name", user_name);
            scm.Parameters.AddWithValue("@password", password);
            SqlDataAdapter sda = new SqlDataAdapter(scm);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            return ds.Tables[0];
        }
         
        public void createUser(string user_name, string password, string user_type, string user_active)
        {
            GConnection gc = new GConnection();
            SqlCommand scm = new SqlCommand();
            scm.Connection = gc.cn;
            scm.CommandText = "sp_CreateUser";
            scm.CommandType = CommandType.StoredProcedure;
            scm.Parameters.AddWithValue("@user_name", user_name);
            scm.Parameters.AddWithValue("@password", password);
            scm.Parameters.AddWithValue("@user_type", user_type);
            scm.Parameters.AddWithValue("@user_active", user_active);
            scm.ExecuteNonQuery();

        }
        public DataTable SearchUserByName(String user_name){
            GConnection gc=new GConnection();
            string strData = "select * from tbl_user where user_name='"+user_name+"'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_user");
            return ds.Tables[0];
        }
        public DataTable DisplayUser()
        {
            GConnection gc = new GConnection();
            string strData = "select * from tbl_user";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_user");
            return ds.Tables[0];
        }
        public void UpdateUser(string user_name, string password, string user_type, string user_active)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_UpdateUser";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@user_name", user_name);
            cmd.Parameters.AddWithValue("@password", password);
            cmd.Parameters.AddWithValue("@user_type", user_type);
            cmd.Parameters.AddWithValue("@user_active", user_active);
            cmd.ExecuteNonQuery();


        }
    }
}