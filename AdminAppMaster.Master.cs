using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OIMS
{
    public partial class AdminAppMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                lblWelcome.Text = "Welcome, " + Session["UserID"].ToString();
            }
            catch(Exception ex) {
                lblWelcome.Text = ex.Message;

                Response.Redirect("Login.aspx");
            }

        }
            

        protected void lnkLogOut_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}