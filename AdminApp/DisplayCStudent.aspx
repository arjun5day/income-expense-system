<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/AdminAppMaster.Master" AutoEventWireup="true" CodeBehind="DisplayCStudent.aspx.cs" Inherits="OIMS.AdminApp.DisplayCStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="appwrapper">
<div class="appreport">



<div class="centerreport">
<div class="reporthead">
    <table>
        <tr>
            <td colspan="2">
             <h4>   Display Student</h4></td>
        </tr>
        <tr>
            <td>
                Select Option</td>
            <td>
                <asp:DropDownList ID="ddOption" runat="server" Width="193px" 
                    AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>All Student</asp:ListItem>
                    <asp:ListItem>Duewise</asp:ListItem>
                    <asp:ListItem>Datewise</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFrom" runat="server" Text="From"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFrom" runat="server" TextMode="Date" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqfFrom" runat="server" 
                    ControlToValidate="txtFrom" CssClass="errorMessage" 
                    ErrorMessage="Date is required" ValidationGroup="display"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblTo" runat="server" Text="To"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTo" runat="server" TextMode="Date" Width="193px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rqfTo" runat="server" ControlToValidate="txtTo" 
                    CssClass="errorMessage" ErrorMessage="Date is required" 
                    ValidationGroup="display"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnDisplay" runat="server" onclick="btnDisplay_Click" 
                    Text="Display" Width="193px" ValidationGroup="display" />
            </td>
        </tr>
    </table>
    </div><!--reporthead close-->
    <div class="report">
        <asp:GridView ID="GVAllCStd" runat="server" DataSourceID="ODCAllCstd">
        </asp:GridView>
        <asp:ObjectDataSource ID="ODCAllCstd" runat="server" 
            SelectMethod="displayCStudent" TypeName="OIMS.BLogic.SComputer">
        </asp:ObjectDataSource>
        
        <br />
        <asp:GridView ID="GVDuewise" runat="server" DataSourceID="ODSDuewiseCstd" 
            onselectedindexchanged="GVDuewise_SelectedIndexChanged">
        </asp:GridView>
        <asp:ObjectDataSource ID="ODSDuewiseCstd" runat="server" 
            SelectMethod="DisplayDue" TypeName="OIMS.BLogic.SComputer">
        </asp:ObjectDataSource>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="ObjectDataSource1">
        </asp:GridView>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" 
            SelectMethod="DisplayDatewise" TypeName="OIMS.BLogic.SComputer">
            <SelectParameters>
                <asp:FormParameter FormField="txtFrom" Name="startdate" Type="DateTime" />
                <asp:FormParameter FormField="txtTo" Name="enddate" Type="DateTime" />
            </SelectParameters>
        </asp:ObjectDataSource>
        
    </div>
    <!--report close-->
    </div><!--centerreport close-->

    




</div><!--appreport close-->

</div><!--appwrapper close-->
<div class="reportview">


</div>

   <div class="bottommenu">
       <ul>
        <li><a href="../AdminApp/AdmitCStudent.aspx">Admit Computer Student</a></li>  
        <li><a href="../AdminApp/UpdateCStudent.aspx">Update Computer Student</a></li>
        <li><a href="../AdminApp/DisplayCStudent.aspx">Display Computer Student</a></li>
        </ul>
        </div><!--bottommenu close-->

</asp:Content>
