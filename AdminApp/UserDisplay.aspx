<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/AdminAppMaster.Master" AutoEventWireup="true" CodeBehind="UserDisplay.aspx.cs" Inherits="OIMS.AdminApp.UserDisplay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="appwrapper">
    
    <div class="fullappdisplay">
    &nbsp;<asp:GridView ID="GridView1" runat="server" 
            DataSourceID="ObjectDataSource1">
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="DisplayUser" TypeName="OIMS.BLogic.OIMSUser">
        </asp:ObjectDataSource>
    
    </div><!--fullappdisplay close-->
    <!--leftappcontent-->
</div><!--appwrapper close-->
  <div class="bottommenu">
       <ul>
        <li><a href="../AdminApp/CreateUser.aspx">Create User</a></li>  
        <li><a href="../AdminApp/UpdateUser.aspx">Update User</a></li>
        <li><a href="../AdminApp/UserDisplay.aspx">Display User</a></li>
        </ul>
        </div><!--bottommenu close-->

</asp:Content>
