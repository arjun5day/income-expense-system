using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using OIMS.BLogic;
using System.Data;

namespace OIMS
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            User u = new User();
            DataTable dt = u.SearchUserByName(txtUserName.Text);
            
            try
            {
                if (dt.Rows.Count < 1)
                {
                    ltrMessage.Text = "no records";
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
                ltrMessage.Text = "User record not found";
            }

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click1(object sender, EventArgs e)
        {
            User s = new User();
            if (txtUserName.Text.Trim() == "")
            {
                ltrMessage.Text = "First Search";
            }
            else
            {
                try
                {
                    s.UpdateUser(txtUserName.Text, txtPassword.Text, ddUserType.SelectedItem.ToString(), ddUserActive.SelectedItem.ToString());
                }
                catch(Exception ex)
                {
                    ltrMessage.Text=ex.Message;
                }
            }
        }
    }
}