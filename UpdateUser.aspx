<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAppMaster.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="OIMS.UpdateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style3
        {
            text-align: center;
        }
        .style4
        {
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <div class=appwrapper>

   <div class=leftappcontent> 
     <table class="style2" cellpadding="5px">
         <tr>
             <td colspan="2" class="style5">
                 <h4 class="style3">Update User</h4></td>
         </tr>
         <tr>
             <td class="style4">
                 <strong>User Name:</strong></td>
             <td class="style4">
                 <asp:TextBox ID="txtUserName" runat="server" Width="262px"></asp:TextBox>
                 <asp:Button ID="btnSearch" runat="server" onclick="btnSearch_Click" 
                     Text="Search" />
             </td>
         </tr>
         <tr>
             <td class="style4">
                 <strong>Password:</strong></td>
             <td class="style4">
                 <asp:TextBox ID="txtPassword" runat="server" Width="262px" TextMode="Password"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style4">
                 <strong>User Type</strong></td>
             <td class="style4">
                 <asp:DropDownList ID="ddUserType" runat="server" Height="24px" Width="181px">
                     <asp:ListItem>Admin</asp:ListItem>
                     <asp:ListItem>Normal</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="style4">
                 User Active</td>
             <td class="style4">
                 <asp:DropDownList ID="ddUserActive" runat="server" Height="24px" Width="181px">
                     <asp:ListItem>Yes</asp:ListItem>
                     <asp:ListItem>No</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="style4">
                 <asp:Button ID="btnUpdate" runat="server" Text="Update" Width="92px" 
                     onclick="btnUpdate_Click1" />
             </td>
             <td class="style4">
                 <asp:Button ID="btnReset" runat="server" Text="Reset" Width="92px" />
             </td>
         </tr>
         <tr>
             <td class="style4" colspan="2">
                 <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
             </td>
         </tr>
     </table>
 
 </div><!--leftappcontent close-->
 </div><!--appwrapper close-->
  <div class="bottommenu">
       <ul>
        <li><a href="AdminApp.aspx">Create User</a></li>  
        <li><a href="UpdateUser.aspx">Update User</a></li>
        <li><a href="DisplayUser.aspx"> Display User</a></li>
        </ul>
        </div><!--bottommenu close-->
</asp:Content>
