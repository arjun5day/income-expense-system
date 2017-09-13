<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/NormalApp.Master" AutoEventWireup="true" CodeBehind="AdmitPStudent.aspx.cs" Inherits="OIMS.NormalApp.AdmitPStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="appwrapper">
    <div class="leftappcontent">


    <table class="style1" cellpadding="5px">
        <tr>
            <td colspan="2" style="text-align: center">
                <h4>Prepration Student Admission</h4></td>
        </tr>
        <tr>
            <td class="style2">
                First Name:</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfFirstName" runat="server" 
                    ControlToValidate="txtFirstName" CssClass="errorMessage" 
                    ErrorMessage="This field is Required" ValidationGroup="AdmitGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Middle Name:</td>
            <td>
                <asp:TextBox ID="txtMiddleName" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Last Name:</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqLastName" runat="server" 
                    ControlToValidate="txtLastName" ErrorMessage="This field is Required" 
                    ValidationGroup="AdmitGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Address:</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqAddress" runat="server" 
                    ControlToValidate="txtAddress" CssClass="errorMessage" 
                    ErrorMessage="This Field is Required" ValidationGroup="AdmitGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Date of Birth:</td>
            <td>
                
                <asp:TextBox ID="txtDOB" runat="server" Width="193px" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfDOB" runat="server" 
                    ControlToValidate="txtDOB" CssClass="errorMessage" ErrorMessage="Select Date" 
                    ValidationGroup="AdmitGroup"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td class="style2">
                Gender:</td>
            <td>
                <asp:DropDownList ID="ddGender" runat="server" Height="16px" Width="104px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Contact No:</td>
            <td>
                <asp:TextBox ID="txtContactNo" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqContactNo" runat="server" 
                    ControlToValidate="txtContactNo" CssClass="errorMessage" 
                    ErrorMessage="Contact is Required" ValidationGroup="AdmitGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Gurdian Contact No:</td>
            <td>
                <asp:TextBox ID="txtGurdianContactNo" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                Joined Date:</td>
            <td>
                <asp:TextBox ID="txtJoinedDate" runat="server" Width="193px" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqJoinedDate" runat="server" 
                    ControlToValidate="txtJoinedDate" CssClass="errorMessage" 
                    ErrorMessage="Joined Date is Missing" ValidationGroup="AdmitGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>

</div><!--leftappcontent close-->
<div class="rightappcontent">
    <table class="style1" cellpadding="5px">
        <tr>
            <td colspan="2" style="text-align: center">
                <h4>Prepration Fee Information</h4></td>
        </tr>
        <tr>
            <td>
                Course:</td>
            <td style="margin-left: 40px">
                <asp:DropDownList ID="ddCourse" runat="server" Width="193px">
                    <asp:ListItem>IELTS</asp:ListItem>
                    <asp:ListItem>TOEFL</asp:ListItem>
                    <asp:ListItem>SAT</asp:ListItem>
                    <asp:ListItem>GRE</asp:ListItem>
                    <asp:ListItem>GMAT</asp:ListItem>
                    <asp:ListItem></asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Fee:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtFee" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqFee" runat="server" 
                    ControlToValidate="txtFee" CssClass="errorMessage" 
                    ErrorMessage="Fee amount is missing"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Advance:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtAdvance" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqAdvance" runat="server" 
                    ControlToValidate="txtAdvance" CssClass="errorMessage" 
                    ErrorMessage="Advance amount is required" ValidationGroup="AdmitGroup"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Due:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtDue" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Remarks:</td>
            <td style="margin-left: 40px" class="style3">
                <asp:TextBox ID="txtRemarks" runat="server" TextMode="MultiLine" Height="120px" 
                    Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAdmission" runat="server" Text="Admit" Width="72px" 
                    onclick="btnAdmission_Click" ValidationGroup="AdmitGroup" />
            </td>
            <td style="margin-left: 40px">
                <asp:Button ID="btnReset" runat="server" Text="Reset" Width="72px" 
                    onclick="btnReset_Click" ValidationGroup="ResetGroup" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
            </td>
        </tr>
    </table>
</div><!--rightappcontent close-->

</div><!--appwrapper close-->


  <div class="bottommenu">
       <ul>
        <li><a href="../NormalApp/AdmitPStudent.aspx">Admit Prepration Student</a></li>  
        <li><a href="../NormalApp/UpdatePStudent.aspx">Update Prepration Student</a></li>
        <li><a href="../NormalApp/DisplayPStudent.aspx">Display Prepration Student</a></li>
        </ul>
        </div><!--bottommenu close-->

</asp:Content>
