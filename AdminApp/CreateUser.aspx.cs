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
    public partial class CreateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            try
            {
                OIMSUser s = new OIMSUser();
            
                DataTable dt = s.SearchUserByName(txtUserName.Text);
                if (dt.Rows.Count < 1)
                {
                    s.createUser(txtUserName.Text, txtPassword.Text, ddUserType.SelectedValue, ddUserActive.SelectedValue);
                    ltrMessage.Text = "User Created";
                }
                else
                {
                    ltrMessage.Text = "User already exist";
                    txtUserName.Text = "";
                    txtPassword.Text = "";
                    txtCPassword.Text = "";
                    txtUserName.Focus();

                }

            }
            catch (Exception ex)
            {
                ltrMessage.Text = ex.Message;
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUserName.Text = "";
            txtPassword.Text = "";
            txtCPassword.Text = "";
        }
    }
}