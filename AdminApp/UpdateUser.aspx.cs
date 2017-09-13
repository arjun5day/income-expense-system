using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using OIMS.BLogic;

namespace OIMS.AdminApp
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            OIMSUser u = new OIMSUser();
            DataTable dt = u.SearchUserByName(txtUserName.Text);

            try
            {
                if (dt.Rows.Count < 1)
                {
                    ltrMessage.Text = "No records on Database";
                }
                else
                {
                    txtPassword.Text = dt.Rows[0]["password"].ToString();
                    ddUserType.Text = dt.Rows[0]["user_type"].ToString();
                    ddUserType.Text = dt.Rows[0]["user_active"].ToString();
                    ltrMessage.Text = "User Exist";
                }

            }
            catch (Exception ex)
            {
                ltrMessage.Text = "User record not found"+ ex.Message;
            }
        }

        protected void btnUpdate_Click1(object sender, EventArgs e)
        {
            OIMSUser s = new OIMSUser();
            if (txtUserName.Text.Trim() == "")
            {
                ltrMessage.Text = "First Search";
            }
            else
            {
                try
                {
                    s.UpdateUser(txtUserName.Text, txtPassword.Text, ddUserType.SelectedItem.ToString(), ddUserActive.SelectedItem.ToString());
                    ltrMessage.Text = "User successfully Updated";
                }
                catch (Exception ex)
                {
                    ltrMessage.Text = ex.Message;
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            OIMSUser u = new OIMSUser();
            try
            {
                u.DeleteUser(txtUserName.Text.ToString());
                txtUserName.Text = "";
                ltrMessage.Text = "Record Deleted!";
            }
            catch (Exception ex)
            {
                ltrMessage.Text = ex.Message;
            }
        }
    }
}