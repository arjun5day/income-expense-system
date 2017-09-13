using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using OIMS.BLogic;

namespace OIMS.NormalApp
{
    public partial class UpdateCStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SComputer c = new SComputer();
            DataTable dt = c.SearchComputerStdById(Convert.ToInt32(txtCStdId.Text));

            try
            {
                if (dt.Rows.Count < 1)
                {
                    ltrCMessage.Text = "No records on Database";
                }
                else
                {
                    txtFirstName.Text = dt.Rows[0]["first_name"].ToString();
                    txtMiddleName.Text = dt.Rows[0]["middle_name"].ToString();
                    txtLastName.Text = dt.Rows[0]["last_name"].ToString();
                    txtAddress.Text = dt.Rows[0]["address"].ToString();
                    txtDOB.Text = dt.Rows[0]["dob"].ToString();
                    ddGender.SelectedValue = dt.Rows[0]["gender"].ToString();
                    txtContactNo.Text = dt.Rows[0]["contact_no"].ToString();
                    txtGurdianContactNo.Text = dt.Rows[0]["gurdian_contact_no"].ToString();
                    txtJoinedDate.Text = dt.Rows[0]["joined_date"].ToString();
                    ddCourse.SelectedValue = dt.Rows[0]["course"].ToString();

                }

            }
            catch (Exception ex)
            {
                ltrCMessage.Text = "User record not found" + ex.Message;
            }
        }

        protected void btnSearchF_Click1(object sender, EventArgs e)
        {
            SComputer c = new SComputer();
            DataTable dt = c.SearchComputerStdFeeByID(Convert.ToInt32(txtCStdIdF.Text));
            if (dt.Rows.Count < 1)
            {
                ltrCFee.Text = "No records on Database";
            }
            else
            {
                txtFee.Text = dt.Rows[0]["fee"].ToString();
                txtPaid.Text = dt.Rows[0]["paid"].ToString();
            }
        }

        protected void btnCUpdate_Click1(object sender, EventArgs e)
        {
            SComputer c = new SComputer();
            if (txtCStdId.Text.Trim() == "")
            {
                ltrCMessage.Text = "first search computer student by Id";
            }
            else
            {
                try
                {
                    c.UpdateComputerStudentInfo(Convert.ToInt32(txtCStdId.Text), txtFirstName.Text, txtMiddleName.Text, txtLastName.Text, txtAddress.Text, txtDOB.Text, ddGender.SelectedItem.Text, txtContactNo.Text, txtGurdianContactNo.Text, txtJoinedDate.Text, ddCourse.SelectedItem.Text);
                    txtCStdId.Text = "";
                    txtFirstName.Text = "";
                    txtMiddleName.Text = "";
                    txtLastName.Text = "";
                    txtAddress.Text = "";
                    txtContactNo.Text = "";
                    txtGurdianContactNo.Text = "";
                    txtJoinedDate.Text = "";
                    txtDOB.Text = "";

                    ltrCMessage.Text = "Computer Student successfully Updated";
                }
                catch (Exception ex)
                {
                    ltrCMessage.Text = ex.Message;
                }
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SComputer c = new SComputer();
            try
            {
                c.DeleteComputerstd(Convert.ToInt16(txtCStdId));
                c.DeleteComputerFee(Convert.ToInt16(txtCStdId));
                ltrCMessage.Text = "Computer student deleted successfully";
            }
            catch (Exception ex)
            {
                ltrCMessage.Text = ex.Message;
            }
        }

        protected void btnResetC_Click1(object sender, EventArgs e)
        {
            txtCStdId.Text = "";
            txtFirstName.Text = "";
            txtMiddleName.Text = "";
            txtLastName.Text = "";
            txtAddress.Text = "";
            txtDOB.Text = "";
            txtGurdianContactNo.Text = "";
            txtContactNo.Text = "";
            txtJoinedDate.Text = ""; 
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SComputer c = new SComputer();
            try
            {
                c.UpdateCFee(Convert.ToInt16(txtCStdIdF.Text), Convert.ToInt16(txtPaid.Text));
                txtCStdIdF.Text = "";
                txtFee.Text = "";
                txtPaid.Text = "";
                ltrFMessage.Text += " Computer Student fee successfully Updated";
            }
            catch (Exception ex)
            {
                ltrFMessage.Text += ex.Message;
            }
        }
    }
}