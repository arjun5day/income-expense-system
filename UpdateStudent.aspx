<%@ Page Title="" Language="C#" MasterPageFile="~/NormalAppMaster.Master" AutoEventWireup="true" CodeBehind="UpdateStudent.aspx.cs" Inherits="OIMS.UpdateStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style2
        {
            width: 221px;
        }
        #TextArea1
        {
            width: 193px;
            height: 176px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class=appwrapper>

<div class=leftappcontent>


    <table class="style1" cellpadding="5px">
        <tr>
            <td colspan="2" style="text-align: center">
                Student Admission</td>
        </tr>
        <tr>
            <td>
                First Name:</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Middle Name:</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" Width="194px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Last Name:</td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" Width="194px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Address:</td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Date of Birth:</td>
            <td>
                <asp:TextBox ID="TextBox5" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Gender:</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="104px">
                    <asp:ListItem>Male</asp:ListItem>
                    <asp:ListItem>Female</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                Contact No:</td>
            <td>
                <asp:TextBox ID="TextBox6" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Gurdian Contact No:</td>
            <td>
                <asp:TextBox ID="TextBox7" runat="server" Width="193px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Joined Date:</td>
            <td>
                <asp:TextBox ID="TextBox11" runat="server" Width="191px"></asp:TextBox>
            </td>
        </tr>
    </table>

</div><!--leftappcontent close-->
<div class=rightappcontent>
    <table class="style1">
        <tr>
            <td colspan="2" style="text-align: center">
                Fee Information</td>
        </tr>
        <tr>
            <td>
                Course:</td>
            <td style="margin-left: 40px">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="193px">
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
                <asp:TextBox ID="TextBox8" runat="server" Width="192px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Advance:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox9" runat="server" Width="192px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Due:</td>
            <td style="margin-left: 40px">
                <asp:TextBox ID="TextBox10" runat="server" Width="192px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                Remarks:</td>
            <td style="margin-left: 40px" class="style3">
                <textarea id="TextArea1" name="S1"></textarea></td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnAdmission" runat="server" Text="Admit" Width="72px" />
            </td>
            <td style="margin-left: 40px">
                <asp:Button ID="btnReset" runat="server" Text="Reset" Width="72px" />
            </td>
        </tr>
    </table>
</div><!--rightappcontent close-->

</div><!--appwrapper close-->

  <div class=bottommenu>
       <ul>
        <li><a href=Computer.aspx>Admit Student</a></li>  
        <li><a href=UpdateStudent.aspx>Update Student</a></li>
        <li>Display Student</li>
        </ul>
        </div><!--bottommenu close-->

</asp:Content>
