<%@ Page Title="" Language="C#" MasterPageFile="~/Masters/AdminAppMaster.Master" AutoEventWireup="true" CodeBehind="DisplayPStudent.aspx.cs" Inherits="OIMS.AdminApp.DisplayPStudent" %>
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
    </div>
    <!--reporthead close-->
    <div class="report">
        
        <br />
        
    </div>
    <!--report close-->
    </div><!--centerreport close-->

    




</div><!--appreport close-->

</div><!--appwrapper close-->
<div class="reportview">


</div>

   <div class="bottommenu">
       <ul>
         <li><a href="../AdminApp/AdmitPStudent.aspx">Admit Prepration Student</a></li>  
        <li><a href="../AdminApp/UpdatePStudent.aspx">Update Prepration Student</a></li>
        <li><a href="../AdminApp/DisplayPStudent.aspx">Display Prepration Student</a></li>
        </ul>
        </div><!--bottommenu close-->

</asp:Content>
