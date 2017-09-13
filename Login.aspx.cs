using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using OIMS.BLogic;

namespace OIMS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            User u = new User();
            DataTable dt = u.CheckUser(txtUser.Text, txtPassword.Text);
            if (dt.Rows.Count < 1)
            {
                ltrMessage.Text = "Invalid User Name or Password!";
            }
            else
            {
                Session["UserID"] = txtUser.Text;
                string userType = dt.Rows[0]["user_type"].ToString();
                string userActive = dt.Rows[0]["user_active"].ToString();
                if (userActive == "Yes")
                {
                    if (userType == "Admin")
                    {
                        Response.Redirect("AdminApp.aspx");
                    }
                    if (userType == "Normal")
                    {
                        Response.Redirect("Computer.aspx");
                    }
                }
                else 
                {
                    ltrMessage.Text = "User is not active";
                }
               // Session["UserID"] = dt.Rows[0]["UName"].ToString();
               
            }
        }

        protected void txtUser_TextChanged(object sender, EventArgs e)
        {

        }
    }
}