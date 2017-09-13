<%@ Page Title="" Language="C#" MasterPageFile="~/AdminAppMaster.Master" AutoEventWireup="true" CodeBehind="DisplayUser.aspx.cs" Inherits="OIMS.DisplayUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="appwrapper">
    
    <div class="fullappdisplay">
    &nbsp;<asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1">
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="DisplayUser" TypeName="OIMS.BLogic.User">
        </asp:ObjectDataSource>
    
    </div><!--fullappdisplay close-->
    <!--leftappcontent-->
</div><!--appwrapper close-->
 <div class="bottommenu">
       <ul>
        <li><a href="AdminApp.aspx">Create User</a></li>  
        <li><a href="UpdateUser.aspx">Update User</a></li>
        <li><a href="DisplayUser.aspx"> Display User</a></li>
        </ul>
        </div><!--bottommenu close-->

</asp:Content>
