<%@ Page Title="" Language="C#" MasterPageFile="~/NormalAppMaster.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="OIMS.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:GridView ID="gvUser" runat="server" DataSourceID="SqlDataSource1" 
            Height="198px" onselectedindexchanged="gvUser_SelectedIndexChanged" 
            Width="527px">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
    </p>
</asp:Content>
