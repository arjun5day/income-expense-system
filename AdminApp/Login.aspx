<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OIMS.AdminApp.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login to application</title>
    <link href="../Style/AppStyle.css" rel="stylesheet" type="text/css" />

</head>
<body>
    <form id="form1" runat="server">
    <div id="wrapper">



    <div id="banner">
    </div><!--banner close-->
    <div class="defaultbody">
    
        <table align="center" cellpadding="5px" cellspacing="5px" class="tablebg">
            <tr>
                <td class="style2" colspan="3">
                    <h4><strong>Please, Login to application</strong></h4></td>
            </tr>
            <tr>
                <td>
                    <strong>User Name:</strong></td>
                <td>
                    <asp:TextBox ID="txtUserName" runat="server" Width="182px" Height="22px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfUserName" runat="server" 
                        ControlToValidate="txtUserName" CssClass="errorMessage" 
                        ErrorMessage="This Field is Required" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <strong>Password:</strong></td>
                <td>
                    <asp:TextBox ID="txtPassword" runat="server" Width="182px" TextMode="Password"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rqPassword" runat="server" 
                        ControlToValidate="txtPassword" CssClass="errorMessage" 
                        ErrorMessage="This field is Required" ValidationGroup="LoginGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnLogin" runat="server" Text="Login" Width="92px" 
                        onclick="btnLogin_Click" ValidationGroup="LoginGroup" />
                </td>
                <td>
                    <asp:Button ID="btnCancel" runat="server" Text="Cancel" Width="92px" 
                        onclick="btnCancel_Click" ValidationGroup="CancelGroup" />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                  <div class="errorMessage">  <asp:Literal ID="ltrMessage" runat="server" 
                          ViewStateMode="Enabled"></asp:Literal></div>
                </td>
            </tr>
        </table>
    
    </div><!--default body close-->
    
   

        <div id="fotter">Copyright.©2014, O&#39;seas Academy,All Right Reserved</div><!--fotter close-->

       </div><!--wrapper close-->
    </form>
 
</body>
</html>
