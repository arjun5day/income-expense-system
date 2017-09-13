<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OIMS.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {

    }
</script>
<html xmlns="http://www.w3.org/1999/xhtml">
<link href="Style/AppStyle.css" rel="stylesheet" type="text/css" />
<head runat="server">
    <title></title>
        <style type="text/css">
            .style1
            {
                text-align: center;
            }
            .style2
            {
                background-color: #F1E8E9;
            }
            .style3
            {
                background-color: #F1E8E9;
                text-align: center;
            }
        </style>
        </head>
<body>
    <form id="form1" runat="server">
    <div id="banner">
    </div><!--banner close-->
    
        <table align="center" style="background-color: ##00601b;">
            <tr>
                <td colspan="2" class="style3">
                    Login User</td>
            </tr>
            <tr>
                <td class="style2">
                    User Name:<br />
                </td>
                <td class="style1" style="margin-left: 80px">
                    <asp:TextBox ID="txtUser" runat="server" Width="262px" 
                        ontextchanged="txtUser_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvUserName" runat="server" 
                        ControlToValidate="txtUser" CssClass="errorMessage" 
                        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    Password:</td>
                <td class="style1">
                    <asp:TextBox ID="txtPassword" runat="server" Width="260px" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvPassword" runat="server" 
                        ControlToValidate="txtUser" CssClass="errorMessage" 
                        ErrorMessage="This field is required"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="margin-left: 40px" class="style2">
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="121px" 
                        onclick="btnLogin_Click" />
                </td>
                <td class="style1">
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="121px" 
                        onclick="btnCancel_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="style2">
                    <asp:Literal ID="ltrMessage" runat="server"></asp:Literal>
                </td>
            </tr>
        </table>
   
    </form>
</body>
</html>
