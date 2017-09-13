<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAppMaster.Master" AutoEventWireup="true" CodeBehind="AdminApp.aspx.cs" Inherits="OIMS.AdminApp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .style2
    {
        width: 100%;
    }
    .style3
    {
            text-align: left;
        }
        .style4
        {
            text-align: left;
        }
        .style5
        {
            text-align: center;
        }
        .style6
        {
            width: 144px;
            text-align: left;
            height: 36px;
        }
        .style7
        {
            text-align: left;
            height: 36px;
        }
        .style8
        {
            text-decoration: underline;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class=appwrapper>
    <div class=leftappcontent> 
     <table class="style2" cellpadding="5px">
         <tr>
             <td colspan="2" class="style5">
                 <h4 class="style8">Create User</h4></td>
         </tr>
         <tr>
             <td class="style3">
                 <strong>User Name:</strong></td>
             <td class="style4">
                 <asp:TextBox ID="txtUserName" runat="server" Width="262px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="rfUserName" runat="server" 
                     ErrorMessage="This field is required" ControlToValidate="txtUserName">*</asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="style3">
                 <strong>Password:</strong></td>
             <td class="style4">
                 <asp:TextBox ID="txtPassword" runat="server" Width="262px" TextMode="Password"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="style3">
                 <strong>Confirm Password:</strong></td>
             <td class="style4">
                 <asp:TextBox ID="txtCPassword" runat="server" Width="263px" TextMode="Password"></asp:TextBox>
                 <asp:CompareValidator ID="cvConfirmPassword" runat="server" 
                     ControlToCompare="txtPassword" ControlToValidate="txtCPassword" 
                     CssClass="errorMessage" ErrorMessage="Password doesn't match"></asp:CompareValidator>
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
                     onclick="btnCreate_Click" />
             </td>
             <td class="style4">
                 <asp:Button ID="btnReset" runat="server" Text="Reset" Width="82px" 
                     onclick="btnReset_Click" />
             </td>
         </tr>
         <tr>
             <td class="style3" colspan="2">
                 <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
             </td>
         </tr>
     </table>
 
 </div><!--leftappcontent close-->


 </div><!--appwrapper close-->


  <div class=bottommenu>
       <ul>
        <li><a href=AdminApp.aspx>Create User</a></li>  
        <li><a href=UpdateUser.aspx>Update User</a></li>
        <li><a href=DisplayUser.aspx>Display User</a></li>
        </ul>
        </div><!--bottommenu close-->
</asp:Content>
