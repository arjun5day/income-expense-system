using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

namespace OIMS.BLogic
{
    public class SLanguage
    {
        public void admitLStudent(string first_name, string middle_name, string last_name, string address, string dob, string gender, string contact_no, string gurdian_contact_no, string joined_date, string course)
        {
            GConnection gc = new GConnection();
            SqlCommand sc = new SqlCommand();
            sc.Connection = gc.cn;
            sc.CommandText = "sp_AdmitLStudent";
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
        public void LFeeEntry(int lstd_id, DateTime pdate, double fee, double paid, string remarks)
        {
            GConnection gc = new GConnection();
            SqlCommand sc = new SqlCommand();
            sc.Connection = gc.cn;
            sc.CommandText = "sp_LFee";
            sc.CommandType = CommandType.StoredProcedure;
            sc.Parameters.AddWithValue("@lstd_id", lstd_id);
            sc.Parameters.AddWithValue("@pdate", pdate);
            sc.Parameters.AddWithValue("@fee", fee);
            sc.Parameters.AddWithValue("@paid", paid);
            sc.Parameters.AddWithValue("@remarks", remarks);
            sc.ExecuteNonQuery();
        }

        public DataTable displayLStudent()
        {
            GConnection gc = new GConnection();
            string strData = "select * from tbl_language";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_language");
            return ds.Tables[0];
        }
        public int CheckLSdtId(string fname, DateTime dob, string gcno)
        {
            GConnection gc = new GConnection();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = gc.cn;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "sp_CheckLStdId";
            cmd.Parameters.AddWithValue("@first_name", fname);
            cmd.Parameters.AddWithValue("@dob", dob);
            cmd.Parameters.AddWithValue("@gurdian_contact_no", gcno);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string lstd_id ;
            
           lstd_id =dt.Rows[0]["lstd_id"].ToString();
                
            return Convert.ToInt32(lstd_id);
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
        public DataTable SearchLStdById(int lstd_id)
        {
            GConnection gc = new GConnection();
            string strData = "select * from tbl_language where lstd_id='" + lstd_id + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_language");
            return ds.Tables[0];
        }
        public DataTable SearchLStdFeeByID(int lstd_id)
        {
            GConnection gc = new GConnection();
            string strData = "select * from tbl_Languagefee where lstd_id='" + lstd_id + "'";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_languagefee");
            return ds.Tables[0];
        }
        public void UpdateLanguageStudentInfo(int lstd_id, string first_name, string middle_name, string last_name, string address, string dob, string gender, string contact_no, string gurdian_contact_no, string joined_date, string course)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_UpdateLanguageStd";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@lstd_id", lstd_id);
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
        public void DeleteLanguagestd(int lstd_id)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_DeleteLStd";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@lstd_id", lstd_id);
            cmd.ExecuteNonQuery();
        }
        public void DeleteLanguageFee(int lstd_id)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_DeleteLFee";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@lstd_id", lstd_id);
            cmd.ExecuteNonQuery();
        }
        public void UpdateLFee(int lstd_id, int paid)
        {
            SqlCommand cmd = new SqlCommand();
            GConnection gc = new GConnection();
            cmd.Connection = gc.cn;
            cmd.CommandText = "sp_UpdateLanguageFee";
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@lstd_id", lstd_id);
            cmd.Parameters.AddWithValue("@paid", paid);
            cmd.ExecuteNonQuery();
        }
    }
}