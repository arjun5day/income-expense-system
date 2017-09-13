using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using OIMS.BLogic;

namespace OIMS.AdminApp
{
    public partial class AdmitPStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdmission_Click(object sender, EventArgs e)
        {
            SPrepration sp = new SPrepration();
            sp.admitPStudent(txtFirstName.Text, txtMiddleName.Text, txtLastName.Text, txtAddress.Text, txtDOB.Text, ddGender.SelectedValue, txtContactNo.Text, txtGurdianContactNo.Text, txtJoinedDate.Text, ddCourse.SelectedValue);
            int cstdid = sp.CheckPsdtid(txtFirstName.Text, Convert.ToDateTime(txtDOB.Text), txtGurdianContactNo.Text);
            sp.PFeeEntry(cstdid, Convert.ToDateTime(txtJoinedDate.Text), Convert.ToDouble(txtFee.Text), Convert.ToDouble(txtAdvance.Text), txtRemarks.Text);
            ltrMessage.Text = "Student Admitted Successfully";
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtMiddleName.Text = "";
            txtLastName.Text = "";
            txtAddress.Text = "";
            txtDOB.Text = "";

        }
    }
}