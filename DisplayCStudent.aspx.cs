using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using OIMS.BLogic;

namespace OIMS
{
    public partial class DisplayCStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {

            txtfrom.Visible = true;
            txtTo.Visible = true;
                ComputerStudent cs = new ComputerStudent();
                GridView1.DataSource = cs.displayCStudent();
                GridView1.DataBind();
        }

        protected void ddResult_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddResult.Text == "All")
            {
                txtfrom.Visible = false;
                txtTo.Visible = false;
                lblFrom.Visible = false;
                lblTo.Visible = false;

            }
            else
            {
                txtfrom.Visible = true;
                txtTo.Visible = true;
                lblFrom.Visible = true;
                lblTo.Visible = true;
            }
           
                
        }
    }
}