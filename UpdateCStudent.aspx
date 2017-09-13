<%@ Page Title="" Language="C#" MasterPageFile="~/NormalAppMaster.Master" AutoEventWireup="true" CodeBehind="UpdateCStudent.aspx.cs" Inherits="OIMS.UpdateCStudent" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #txtRemarks
        {
            height: 223px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="appwrapper">

<div class="leftappcontent">


    <table class="style1" cellpadding="5px">
        <tr>
            <td colspan="2" style="text-align: center">
                Update
                Student</td>
        </tr>
        <tr>
            <td>
                First Name:</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqFirstName" runat="server" 
                    ControlToValidate="txtFirstName" CssClass="errorMessage" 
                    ErrorMessage="This field is requied"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Middle Name:</td>
            <td>
                <asp:TextBox ID="txtMiddleName" runat="server" Width="194px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Last Name:</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server" Width="194px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Address:</td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Date of Birth:</td>
            <td>
                
                <asp:TextBox ID="txtDOB" runat="server" Width="188px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Gender:</td>
            <td>
                <asp:DropDownList ID="ddGender" runat="server" Height="16px" Width="132px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Contact No:</td>
            <td>
                <asp:TextBox ID="txtContactNo" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Gurdian Contact No:</td>
            <td>
                <asp:TextBox ID="txtGurdianContactNo" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Joined Date:</td>
            <td>
                <asp:TextBox ID="txtJoinedDate" runat="server" Width="191px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>

</div><!--leftappcontent close-->
<div class="rightappcontent">
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center">
                Fee Information</td>
        </tr>
        <tr>
            <td>
                Course:</td>
            <td style="margin-left: 40px">
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
            <td>
                Fee:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtFee" runat="server" Width="192px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Advance:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtAdvance" runat="server" Width="192px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Due:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="txtDue" runat="server" Width="192px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Remarks:</td>
            <td style="margin-left: 40px" class="style3">
                <textarea id="txtRemarks" name="S1"></textarea></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAdmission" runat="server" Text="Admit" Width="72px" 
                    onclick="btnAdmission_Click" />
            </td>
            <td style="margin-left: 40px">
                <asp:Button ID="btnReset" runat="server" Text="Reset" Width="72px" />
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
        <li><a href="adminComputer.aspx">Admit Student</a></li>  
        <li><a href="UpdateCStudent.aspx">Update Student</a></li>
        <li><a href="DisplayCStudent.aspx">Display Student</a></li>
        </ul>
        </div><!--bottommenu close-->
</asp:Content>
