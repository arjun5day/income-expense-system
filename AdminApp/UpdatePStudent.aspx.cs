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
    public partial class UpdatePStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SPrepration p = new SPrepration();
            DataTable dt = p.SearchPreprationStdById(Convert.ToInt32(txtPStdId.Text));

            try
            {
                if (dt.Rows.Count < 1)
                {
                    ltrPMessage.Text = "No records on Database";
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
                ltrPMessage.Text = "User record not found" + ex.Message;
            }
        }

        protected void btnCUpdate_Click1(object sender, EventArgs e)
        {
            SPrepration p = new SPrepration();
            if (txtPStdId.Text.Trim() == "")
            {
                ltrPMessage.Text = "first search computer student by Id";
            }
            else
            {
                try
                {
                    p.UpdatePreprationStudentInfo(Convert.ToInt32(txtPStdId.Text), txtFirstName.Text, txtMiddleName.Text, txtLastName.Text, txtAddress.Text, txtDOB.Text, ddGender.SelectedItem.Text, txtContactNo.Text, txtGurdianContactNo.Text, txtJoinedDate.Text, ddCourse.SelectedItem.Text);
                    txtPStdId.Text = "";
                    txtFirstName.Text = "";
                    txtMiddleName.Text = "";
                    txtLastName.Text = "";
                    txtAddress.Text = "";
                    txtContactNo.Text = "";
                    txtGurdianContactNo.Text = "";
                    txtJoinedDate.Text = "";
                    txtDOB.Text = "";

                    ltrPMessage.Text = "Computer Student successfully Updated";
                }
                catch (Exception ex)
                {
                    ltrPMessage.Text = ex.Message;
                }
            }
        }

        protected void btnResetC_Click1(object sender, EventArgs e)
        {
            txtPStdId.Text = "";
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
            SPrepration p = new SPrepration();
            try
            {
                p.UpdatePFee(Convert.ToInt16(txtPStdIdF.Text), Convert.ToInt16(txtPaid.Text));
                txtPStdIdF.Text = "";
                txtFee.Text = "";
                txtPaid.Text = "";
                ltrFMessage.Text += " Prepration Student fee successfully Updated";
            }
            catch (Exception ex)
            {
                ltrFMessage.Text += ex.Message;
            }
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnSearchF_Click1(object sender, EventArgs e)
        {
            SPrepration p = new SPrepration();
            DataTable dt = p.SearchPreprationStdFeeByID(Convert.ToInt32(txtPStdIdF.Text));
            if (dt.Rows.Count < 1)
            {
                ltrFMessage.Text="No records on Database";
            }
            else
            {
                txtFee.Text = dt.Rows[0]["fee"].ToString();
                txtPaid.Text = dt.Rows[0]["paid"].ToString();
            }
            
        }
    }
}