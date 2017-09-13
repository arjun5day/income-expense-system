<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/AdminAppMaster.Master" AutoEventWireup="true" CodeBehind="UpdateUser.aspx.cs" Inherits="OIMS.AdminApp.UpdateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                     Text="Search" ValidationGroup="SearchGroup" />
                 <br />
                 <asp:RequiredFieldValidator ID="rfUserName" runat="server" 
                     ControlToValidate="txtUserName" CssClass="errorMessage" 
                     ErrorMessage="This field is required" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="style4">
                 <strong>Password:</strong></td>
             <td class="style4">
                 <asp:TextBox ID="txtPassword" runat="server" Width="262px" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfPassword" runat="server" 
                     ControlToValidate="txtPassword" CssClass="errorMessage" 
                     ErrorMessage="RequiredFieldValidator" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="style4">
                 <strong>Confirm Password:</strong></td>
             <td class="style4">
                 <asp:TextBox ID="txtCPassword" runat="server" Width="262px" TextMode="Password" 
                     ValidationGroup="UpdateGroup"></asp:TextBox>
                 <br />
                 <asp:CompareValidator ID="cvConfirmPassword" runat="server" 
                     ControlToCompare="txtPassword" ControlToValidate="txtCPassword" 
                     CssClass="errorMessage" ErrorMessage="Password doesn't match" 
                     ValidationGroup="UpdateGroup"></asp:CompareValidator>
             </td>
         </tr>
         <tr>
             <td class="style4">
                 <strong>User Type</strong></td>
             <td class="style4">
                 <asp:DropDownList ID="ddUserType" runat="server" Height="24px" Width="181px">
                     <asp:ListItem>Normal</asp:ListItem>
                     <asp:ListItem>Admin</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="style4">
                 <strong>User Active</strong></td>
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
                     onclick="btnUpdate_Click1" ValidationGroup="UpdateGroup" />
             </td>
             <td class="style4">
                 <asp:Button ID="btnDelete" runat="server" ForeColor="Red" 
                     onclick="btnDelete_Click" Text="Delete" Width="92px" />
             </td>
         </tr>
         <tr>
             <td class="style4" colspan="2">
               <div class="errorMessage">  <asp:Literal ID="ltrMessage" runat="server"></asp:Literal></div>
             </td>
         </tr>
     </table>
 
 </div><!--leftappcontent close-->
 </div><!--appwrapper close-->
  <div class="bottommenu">
       <ul>
        <li><a href="../AdminApp/CreateUser.aspx">Create User</a></li>  
        <li><a href="../AdminApp/UpdateUser.aspx">Update User</a></li>
        <li><a href="../AdminApp/UserDisplay.aspx">Display User</a></li>
        </ul>
        </div><!--bottommenu close-->
</asp:Content>
