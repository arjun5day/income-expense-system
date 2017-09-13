<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/AdminAppMaster.Master" AutoEventWireup="true" CodeBehind="CreateUser.aspx.cs" Inherits="OIMS.AdminApp.CreateUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="appwrapper">
    <div class="leftappcontent"> 
     <table cellpadding="5px">
         <tr>
             <td colspan="2">
                 <h4>Create User</h4></td>
         </tr>
         <tr>
             <td class="style3">
                 <strong>User Name:</strong></td>
             <td class="style4">
                 <asp:TextBox ID="txtUserName" runat="server" Width="262px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfUserName" runat="server" 
                     ErrorMessage="This field is required" ControlToValidate="txtUserName" 
                     CssClass="errorMessage" ValidationGroup="CreateGroup"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="style3">
                 <strong>Password:</strong></td>
             <td class="style4">
                 <asp:TextBox ID="txtPassword" runat="server" Width="262px" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rqPassword" runat="server" 
                     ControlToValidate="txtCPassword" CssClass="errorMessage" 
                     ErrorMessage="This Field is Required" ValidationGroup="CreateGroup"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="style3">
                 <strong>Confirm Password:</strong></td>
             <td class="style4">
                 <asp:TextBox ID="txtCPassword" runat="server" Width="263px" TextMode="Password"></asp:TextBox>
                 <asp:CompareValidator ID="cvConfirmPassword" runat="server" 
                     ControlToCompare="txtPassword" ControlToValidate="txtCPassword" 
                     CssClass="errorMessage" ErrorMessage="Password doesn't match" 
                     ValidationGroup="CreateGroup"></asp:CompareValidator>
             </td>
         </tr>
         <tr>
             <td class="style6">
                 <strong>User Type</strong></td>
             <td class="style7">
                 <asp:DropDownList ID="ddUserType" runat="server" Height="21px" Width="133px">
                     <asp:ListItem>Admin</asp:ListItem>
                     <asp:ListItem>Normal</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="style6">
                 <strong>User Active</strong></td>
             <td class="style7">
                 <asp:DropDownList ID="ddUserActive" runat="server" Height="16px" Width="133px">
                     <asp:ListItem>Yes</asp:ListItem>
                     <asp:ListItem>No</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="style3">
                 <asp:Button ID="btnCreate" runat="server" Text="Create" Width="82px" 
                     onclick="btnCreate_Click" ValidationGroup="CreateGroup" />
             </td>
             <td class="style4">
                 <asp:Button ID="btnReset" runat="server" Text="Reset" Width="82px" 
                     onclick="btnReset_Click" ValidationGroup="ResetGroup" />
             </td>
         </tr>
         <tr>
             <td class="style3" colspan="2">
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
