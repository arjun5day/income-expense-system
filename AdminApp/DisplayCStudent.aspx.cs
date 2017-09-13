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
    public partial class DisplayCStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtFrom.Visible = false;
            txtTo.Visible = false;
            lblFrom.Visible = false;
            lblTo.Visible = false;
            //GVDatewise.Visible = false;
            GVAllCStd.Visible = false;
            GVDuewise.Visible = false;
            GridView1.Visible = false;

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddOption.SelectedItem.Value == "All Student")
            {
                lblFrom.Visible = false;
                lblTo.Visible = false;
                txtFrom.Visible = false;
                txtTo.Visible = false;

            }
            else if (ddOption.SelectedItem.Value == "Datewise")
            {
                txtFrom.Visible = true;
                txtTo.Visible = true;
                lblFrom.Visible = true;
                lblTo.Visible = true;
            }
            else {
                txtFrom.Visible = false;
                txtTo.Visible = false;
                lblFrom.Visible = false;
                lblTo.Visible = false;
            }

        }

        protected void btnDisplay_Click(object sender, EventArgs e)
        {
            if (ddOption.SelectedValue == "All Student")
            {
                GVAllCStd.Visible = true;
                rqfFrom.Visible = false;
                rqfTo.Visible = false;
               

            }
            else if (ddOption.SelectedValue == "Datewise")
            {
                //SComputer sc = new SComputer();
                //DataTable dt = sc.DisplayDatewise(Convert.ToDateTime(txtFrom.Text), Convert.ToDateTime(txtTo.Text));
                //GVDatewise.Visible = true;
                //GVDatewise.DataSource = dt;
               // GVDatewise.DataBind();
                GridView1.Visible = true;

            }
            else if (ddOption.SelectedValue == "Duewise")
            {
                rqfFrom.Visible = false;
                rqfTo.Visible = false;
                GVDuewise.Visible = true;

            }
        }

        protected void GVDuewise_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}