using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace OIMS.BLogic
{
    public class SComputer
    {
        public void admitComputerStudent(string first_name, string middle_name, string last_name, string address, string dob, string gender, string contact_no, string gurdian_contact_no, string joined_date, string course)
        {
            GConnection gc = new GConnection();
            SqlCommand sc = new SqlCommand();
            sc.Connection = gc.cn;
            sc.CommandText = "sp_AdmitComputerStudent";
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@first_name", first_name);
            sc.Parameters.AddWithValue("@middle_name", middle_name);
            sc.Parameters.AddWithValue("@last_name", last_name);
            sc.Parameters.AddWithValue("@address", address);
            sc.Parameters.AddWithValue("@dob", dob);
            sc.Parameters.AddWithValue("@gender", gender);
            sc.Parameters.AddWithValue("@contact_no", contact_no);
            sc.Parameters.AddWithValue("@gurdian_contact_no", gurdian_contact_no);
            sc.Parameters.AddWithValue("@joined_date", joined_date);
            sc.Parameters.AddWithValue("@course", course);
            sc.ExecuteNonQuery();
        }
        public void ComputerFeeEntry(int cstd_id, DateTime pdate, int fee, int paid, string remarks)
        {
            GConnection gc = new GConnection();
            SqlCommand sc = new SqlCommand();
            sc.Connection = gc.cn;
            sc.CommandText = "sp_CFee";
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@cstd_id", cstd_id);
            sc.Parameters.AddWithValue("@pdate", pdate);
            sc.Parameters.AddWithValue("@fee", fee);
            sc.Parameters.AddWithValue("@paid", paid);
            sc.Parameters.AddWithValue("@remarks", remarks);
            sc.ExecuteNonQuery();
        }       
        public int CheckCsdtid(string fname, DateTime dob, string gcno)
        {
            GConnection gc = new GConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = gc.cn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_checkcstdid";
            cmd.Parameters.AddWithValue("@first_name", fname);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@gurdian_contact_no", gcno);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string cstdid = dt.Rows[0]["cstd_id"].ToString();
            return Convert.ToInt32(cstdid);

        }
        public DataTable displayCStudent()
        {
            GConnection gc = new GConnection();
            string strData = "select tbl_computer.first_name, tbl_computer.middle_name, tbl_computer.last_name, tbl_computer.joined_date, tbl_computer.course, tbl_computerfee.fee, tbl_computerfee.paid from tbl_computer inner join tbl_computerfee on tbl_computer.cstd_id=tbl_computerfee.cstd_id;";
           // string strData = "select * from tbl_computer";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_computer");
            return ds.Tables[0];
        }
       
        public DataTable DisplayDatewise(DateTime startdate, DateTime enddate)
        {
            GConnection gc = new GConnection();
            SqlCommand sc = new SqlCommand();
            sc.Connection = gc.cn;
            sc.CommandType = CommandType.StoredProcedure;
            sc.CommandText = "sp_DisplayCSDatewise";
            sc.Parameters.AddWithValue("@startdate", startdate);
            sc.Parameters.AddWithValue("@enddate", enddate);
            SqlDataAdapter sda = new SqlDataAdapter(sc);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;

        }
        public DataTable DisplayDue()
        {
            GConnection gc = new GConnection();
            SqlCommand sc = new SqlCommand();
            sc.Connection = gc.cn;
            sc.CommandType = CommandType.StoredProcedure;
            sc.CommandText = "sp_CDue";
            SqlDataAdapter sda = new SqlDataAdapter(sc);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }
        public DataTable SearchComputerStdById(int cstd_id)
        {
            GConnection gc = new GConnection();
            string strData = "select * from tbl_computer where cstd_id='" + cstd_id + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_computer");
            return ds.Tables[0];
        }
        public DataTable SearchComputerStdFeeByID(int cstd_id)
        {
            GConnection gc = new GConnection();
            string strData = "select * from tbl_computerfee where cstd_id='" + cstd_id + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_computerfee");
            return ds.Tables[0];
        }
        public void UpdateComputerStudentInfo(int cstd_id, string first_name, string middle_name, string last_name, string address, string dob, string gender, string contact_no, string gurdian_contact_no, string joined_date, string course)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_UpdateComputerStd";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cstd_id", cstd_id);
            cmd.Parameters.AddWithValue("@first_name", first_name);
            cmd.Parameters.AddWithValue("@middle_name", middle_name);
            cmd.Parameters.AddWithValue("@last_name", last_name);
            cmd.Parameters.AddWithValue("@address", address);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@gender", gender);
            cmd.Parameters.AddWithValue("@contact_no", contact_no);
            cmd.Parameters.AddWithValue("@gurdian_contact_no", gurdian_contact_no);
            cmd.Parameters.AddWithValue("@joined_date", joined_date);
            cmd.Parameters.AddWithValue("@course", course);
            cmd.ExecuteNonQuery();
        }
        public void DeleteComputerstd(int cstd_id)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_DeleteCStd";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cstd_id", cstd_id);
            cmd.ExecuteNonQuery();
        }
        public void DeleteComputerFee(int cstd_id)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_DeleteCFee";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cstd_id", cstd_id);
            cmd.ExecuteNonQuery();
        }
        public void UpdateCFee(int cstd_id, int paid)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_UpdateComputerFee";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cstd_id", cstd_id);
            cmd.Parameters.AddWithValue("@paid", paid);
            cmd.ExecuteNonQuery();
        }
        
    }
}