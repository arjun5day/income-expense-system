<%@ Page Title="" Language="C#" MasterPageFile="~/NormalAppMaster.Master" AutoEventWireup="true" CodeBehind="DisplayCStudent.aspx.cs" Inherits="OIMS.DisplayCStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 354px;
        }
        .style3
        {
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="appbody">

<div class="appreport">





    <table class="style1">
        <tr>
            <td colspan="2">
                Display User</td>
        </tr>
        <tr>
            <td class="style3">
                Result As</td>
            <td>
                <asp:DropDownList ID="ddResult" runat="server" Height="16px" Width="146px" 
                    AutoPostBack="True" onselectedindexchanged="ddResult_SelectedIndexChanged">
                    <asp:ListItem>Datewise</asp:ListItem>
                    <asp:ListItem>All</asp:ListItem>
                    <asp:ListItem>DueWise</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblFrom" runat="server" Text="From"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtfrom" runat="server" Width="171px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="lblTo" runat="server" Text="To"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTo" runat="server" Width="172px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Button ID="btnDisplay" runat="server" Text="Display" Width="110px" 
                    onclick="btnDisplay_Click" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Reset" Width="103px" />
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataKeyNames="cstd_id">
                    <Columns>
                        <asp:BoundField DataField="cstd_id" HeaderText="cstd_id" InsertVisible="False" 
                            ReadOnly="True" SortExpression="cstd_id" />
                        <asp:BoundField DataField="first_name" HeaderText="first_name" 
                            SortExpression="first_name" />
                        <asp:BoundField DataField="middle_name" HeaderText="middle_name" 
                            SortExpression="middle_name" />
                        <asp:BoundField DataField="last_name" HeaderText="last_name" 
                            SortExpression="last_name" />
                        <asp:BoundField DataField="address" HeaderText="address" 
                            SortExpression="address" />
                        <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                        <asp:BoundField DataField="gender" HeaderText="gender" 
                            SortExpression="gender" />
                        <asp:BoundField DataField="contactno" HeaderText="contactno" 
                            SortExpression="contactno" />
                        <asp:BoundField DataField="gurdian_contactno" HeaderText="gurdian_contactno" 
                            SortExpression="gurdian_contactno" />
                        <asp:BoundField DataField="course" HeaderText="course" 
                            SortExpression="course" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>





</div><!--appreport close-->

</div><!--appbody close-->
  <div class="bottommenu">
       <ul>
        <li><a href="adminComputer.aspx">Admit Student</a></li>  
        <li><a href="UpdateStudent.aspx">Update Student</a></li>
        <li><a href="DisplayCStudent.aspx">Display Student</a></li>
        </ul>
        </div><!--bottommenu close-->

</asp:Content>
