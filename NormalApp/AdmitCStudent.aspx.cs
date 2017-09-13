using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using OIMS.BLogic;

namespace OIMS.NormalApp
{
    public partial class AdmitCStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdmission_Click(object sender, EventArgs e)
        {
            SComputer sc = new SComputer();
            sc.admitComputerStudent(txtFirstName.Text, txtMiddleName.Text, txtLastName.Text, txtAddress.Text, txtDOB.Text, ddGender.SelectedValue, txtContactNo.Text, txtGurdianContactNo.Text, txtJoinedDate.Text, ddCourse.SelectedValue);
            int cstdid = sc.CheckCsdtid(txtFirstName.Text, Convert.ToDateTime(txtDOB.Text), txtGurdianContactNo.Text);
            sc.ComputerFeeEntry(cstdid, Convert.ToDateTime(txtJoinedDate.Text), Convert.ToInt16(txtFee.Text), Convert.ToInt16(txtAdvance.Text), txtRemarks.Text);
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