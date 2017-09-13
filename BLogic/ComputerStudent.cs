using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Data;
using System.Data.SqlClient;

using OIMS.BLogic;

namespace OIMS.BLogic
{
    public class ComputerStudent
    {
        public void admitComputerStudent(string first_name, string middle_name, string last_name, string address, string dob, string gender, string contactno, string gurdian_contactno, string joined_date, string course)
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
            sc.Parameters.AddWithValue("@contactno", contactno);
            sc.Parameters.AddWithValue("@gurdian_contactno", gurdian_contactno);
            sc.Parameters.AddWithValue("@joined_date", joined_date);
            sc.Parameters.AddWithValue("@course", course);
            sc.ExecuteNonQuery();
        }
        public void ComputerFeeEntry(int cstd_id, DateTime pdate, double fee, double paid, string remarks)
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

        public DataTable displayCStudent()
        {
            GConnection gc = new GConnection();
            string strData = "select * from tbl_computer";
            SqlDataAdapter da = new SqlDataAdapter(strData, gc.cn);
            DataSet ds = new DataSet();
            da.Fill(ds, "tbl_computer");
            return ds.Tables[0];
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
            cmd.Parameters.AddWithValue("@gurdian_contactno", gcno);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            string cstdid = dt.Rows[0]["cstd_id"].ToString();
            return Convert.ToInt32(cstdid);

        }
    }

}