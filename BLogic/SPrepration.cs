using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace OIMS.BLogic
{
    public class SPrepration
    {
        public void admitPStudent(string first_name, string middle_name, string last_name, string address, string dob, string gender, string contact_no, string gurdian_contact_no, string joined_date, string course)
        {
            GConnection gc = new GConnection();
            SqlCommand sc = new SqlCommand();
            sc.Connection = gc.cn;
            sc.CommandText = "sp_AdmitPStudent";
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
        public void PFeeEntry(int pstd_id, DateTime pdate, double fee, double paid, string remarks)
        {
            GConnection gc = new GConnection();
            SqlCommand sc = new SqlCommand();
            sc.Connection = gc.cn;
            sc.CommandText = "sp_PFee";
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@pstd_id", pstd_id);
            sc.Parameters.AddWithValue("@pdate", pdate);
            sc.Parameters.AddWithValue("@fee", fee);
            sc.Parameters.AddWithValue("@paid", paid);
            sc.Parameters.AddWithValue("@remarks", remarks);
            sc.ExecuteNonQuery();
        }

        public DataTable displayPStudent()
        {
            GConnection gc = new GConnection();
            string strData = "select * from tbl_prepration";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_prepration");
            return ds.Tables[0];
        }
        public int CheckPsdtid(string fname, DateTime dob, string gcno)
        {
            GConnection gc = new GConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = gc.cn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_CheckPStdId";
            cmd.Parameters.AddWithValue("@first_name", fname);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@gurdian_contact_no", gcno);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string pstd_id;
            pstd_id = dt.Rows[0]["pstd_id"].ToString();
            return Convert.ToInt32(pstd_id);

        }
        public DataTable SearchPreprationStdById(int pstd_id)
        {
            GConnection gc = new GConnection();
            string strData = "select * from tbl_prepration where pstd_id='" + pstd_id + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_prepration");
            return ds.Tables[0];
        }
        public DataTable SearchPreprationStdFeeByID(int pstd_id)
        {
            GConnection gc = new GConnection();
            string strData = "select * from tbl_preprationfee where pstd_id='" + pstd_id + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_preprationfee");
            return ds.Tables[0];
        }
        public void UpdatePreprationStudentInfo(int pstd_id, string first_name, string middle_name, string last_name, string address, string dob, string gender, string contact_no, string gurdian_contact_no, string joined_date, string course)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_UpdatePreprationStd";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@cstd_id", pstd_id);
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
        public void UpdatePFee(int pstd_id, int paid)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_UpdatePreprationFee";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@pstd_id", pstd_id);
            cmd.Parameters.AddWithValue("@paid", paid);
            cmd.ExecuteNonQuery();
        }
        public DataTable DisplayDue()
        {
            GConnection gc = new GConnection();
            SqlCommand sc = new SqlCommand();
            sc.Connection = gc.cn;
            sc.CommandType = CommandType.StoredProcedure;
            sc.CommandText = "sp_PDue";
            SqlDataAdapter sda = new SqlDataAdapter(sc);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            return dt;
        }

    }
}