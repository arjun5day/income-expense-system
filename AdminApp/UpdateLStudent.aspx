<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/AdminAppMaster.Master" AutoEventWireup="true" CodeBehind="UpdateLStudent.aspx.cs" Inherits="OIMS.AdminApp.UpdateLStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="appwrapper">
    <div class="leftappcontent">


    <table class="style1" cellpadding="2px">
        <tr>
            <td colspan="3" style="text-align: center">
                <h4>Update Language Student Information</h4></td>
        </tr>
        <tr>
            <td>
                Student Id (lstd_id):</td>
            <td colspan="2">
                <asp:TextBox ID="txtLStdId" runat="server" Width="193px" 
                    ValidationGroup="SearchCStdGroup"></asp:TextBox>
                <asp:Button ID="btnSearch" runat="server" Text="Search Student Id" 
                    ValidationGroup="SearchCStdGroup" onclick="btnSearch_Click" />
            </td>
        </tr>
        <tr>
            <td>
                First Name:</td>
            <td colspan="2">
                <asp:TextBox ID="txtFirstName" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfFirstName" runat="server" 
                    ControlToValidate="txtFirstName" CssClass="errorMessage" 
                    ErrorMessage="This field is Required" ValidationGroup="UpdateGroupC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Middle Name:</td>
            <td colspan="2">
                <asp:TextBox ID="txtMiddleName" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Last Name:</td>
            <td colspan="2">
                <asp:TextBox ID="txtLastName" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqLastName" runat="server" 
                    ControlToValidate="txtLastName" ErrorMessage="This field is Required" 
                    ValidationGroup="UpdateGroupC" CssClass="errorMessage"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Address:</td>
            <td colspan="2">
                <asp:TextBox ID="txtAddress" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqAddress" runat="server" 
                    ControlToValidate="txtAddress" CssClass="errorMessage" 
                    ErrorMessage="This Field is Required" ValidationGroup="UpdateGroupC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Date of Birth:</td>
            <td colspan="2">
                
                <asp:TextBox ID="txtDOB" runat="server" Width="193px" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfDOB" runat="server" 
                    ControlToValidate="txtDOB" CssClass="errorMessage" ErrorMessage="Select Date" 
                    ValidationGroup="UpdateGroupC"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td>
                Gender:</td>
            <td colspan="2">
                <asp:DropDownList ID="ddGender" runat="server" Height="16px" Width="104px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Contact No:</td>
            <td colspan="2">
                <asp:TextBox ID="txtContactNo" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqContactNo" runat="server" 
                    ControlToValidate="txtContactNo" CssClass="errorMessage" 
                    ErrorMessage="Contact is Required" ValidationGroup="UpdateGroupC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Gurdian Contact No:</td>
            <td colspan="2">
                <asp:TextBox ID="txtGurdianContactNo" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Joined Date:</td>
            <td colspan="2">
                <asp:TextBox ID="txtJoinedDate" runat="server" Width="193px" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqJoinedDate" runat="server" 
                    ControlToValidate="txtJoinedDate" CssClass="errorMessage" 
                    ErrorMessage="Joined Date is Missing" ValidationGroup="UpdateGroupC"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Course:</td>
            <td colspan="2">
                <asp:DropDownList ID="ddCourse" runat="server" Width="193px">
                    <asp:ListItem>Basic</asp:ListItem>
                    <asp:ListItem>Diploma</asp:ListItem>
                    <asp:ListItem>Basic Graphic</asp:ListItem>
                    <asp:ListItem>Advance Graphic</asp:ListItem>
                    <asp:ListItem>Hardware &amp; Networking</asp:ListItem>
                    <asp:ListItem>Hardware</asp:ListItem>
                    <asp:ListItem>Networking</asp:ListItem>
                    <asp:ListItem>Programming</asp:ListItem>
                    <asp:ListItem>Office Handling Package</asp:ListItem>
                    <asp:ListItem>Special</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Literal ID="ltrCMessage" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnCUpdate" runat="server" Text="Update" 
                    ValidationGroup="UpdateGroupC" onclick="btnCUpdate_Click1" />
            </td>
            <td>
                <asp:Button ID="btnDelete" runat="server" onclick="btnDelete_Click" 
                    Text="Delete Student" ValidationGroup="SearchCStdGroup" />
            </td>
            <td>
                <asp:Button ID="btnResetC" runat="server" Text="Reset" 
                    ValidationGroup="ResetGroupC" onclick="btnResetC_Click1" />
            </td>
        </tr>
        </table>

</div><!--leftappcontent close-->
<div class="rightappcontent">
    <table class="style1" cellpadding="5px">
        <tr>
            <td colspan="3" style="text-align: center">
                <h4>Update Language Fee Information</h4></td>
        </tr>
        <tr>
            <td>
                Student Id (lstd_id):</td>
            <td style="margin-left: 40px" colspan="2">
                <asp:TextBox ID="txtLStdIdF" runat="server" Width="193px" 
                    ValidationGroup="SearchCFGroup"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtLStdIdF" CssClass="errorMessage" 
                    ErrorMessage="This field is required"></asp:RequiredFieldValidator>
                <br />
                <asp:Button ID="btnSearchF" runat="server" Text="Search Student Id" 
                    onclick="btnSearchF_Click1" ValidationGroup="SearchCFGroup" />
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Literal ID="ltrCFee" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td>
                Fee:</td>
            <td style="margin-left: 40px" colspan="2">
                <asp:TextBox ID="txtFee" runat="server" Width="193px" ReadOnly="True"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqFee" runat="server" 
                    ControlToValidate="txtFee" CssClass="errorMessage" 
                    ErrorMessage="Fee amount is missing" ValidationGroup="UpdateGroupF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Paid:</td>
            <td style="margin-left: 40px" colspan="2">
                <asp:TextBox ID="txtPaid" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqAdvance" runat="server" 
                    ControlToValidate="txtPaid" CssClass="errorMessage" 
                    ErrorMessage="Advance amount is required" ValidationGroup="UpdateGroupF"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Due:</td>
            <td style="margin-left: 40px" colspan="2">
                <asp:TextBox ID="txtDue" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Remarks:</td>
            <td style="margin-left: 40px" class="style3" colspan="2">
                <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" Height="120px" 
                    Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnup" runat="server" onclick="Button1_Click" Text="Update" />
            </td>
            <td style="margin-left: 40px">
                &nbsp;</td>
            <td style="margin-left: 40px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:Literal ID="ltrFMessage" runat="server"></asp:Literal>
            </td>
        </tr>
    </table>
</div><!--rightappcontent close-->

</div><!--appwrapper close-->
   <div class="bottommenu">
       <ul>
        <li><a href="../AdminApp/AdmitLStudent.aspx">Admit Language Student</a></li>  
        <li><a href="../AdminApp/UpdateLStudent.aspx">Update Language Student</a></li>
        <li><a href="../AdminApp/DisplayLStudent.aspx">Display Language Student</a></li>
        </ul>
        </div><!--bottommenu close-->


</asp:Content>

