<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Sistema.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head" runat="server">
    <title>Login</title>
    <style type="text/css">
        .style1
        {
            width: 336px;
            height: 115px;
        }
        .style2
        {
            width: 284px;
            height: 70px;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="frmlog" runat="server">
                                            <img alt="" class="style1" src="Image/SeZac.jpg" /><div>
    </div>
    <div style="width:700PX; position:relative; top: 200px; left:400px; text-align: center">
        <table style="text-align: center; border-collapse: collapse; width: 697px;">
                        <tr>
                            <td>
                                <table border="0" style="text-align: center">
                                    <tr>
                                        <td style="text-align: justify">
                                            <img alt="" class="style2" src="Image/SeZac2.jpg" /><br />
                                            <br />
                                            <br />
                                            <br />
                                            <br />                                            
                                        </td>
                                    </tr>
                                </table>
                            </td>
                            <td>
                                <table style="height: 180px; width: 260px;">
                                    <tr>
                                        <td colspan="2" 
                                            style="color: White; background-color: #999999; font-size: 0.7em; font-weight: bold; padding: 2px;">
                                            SEZAC</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="color: #00B2EE; font-style: italic; font-size: 0.7em; font-weight: bold;">&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right ;color: Black; font-size: 0.7em;">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="txtUserName" Font-Bold="True" Font-Italic="True">Cuenta de usuario:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtUserName" runat="server" Width="100"  Font-Bold="True" Font-Italic="False"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="txtUserName"
                                                ErrorMessage="La cuenta de usuario es obligatoria" 
                                                ToolTip="La cuenta de usuario es obligatoria" ForeColor="#CC0000"
                                                >*</asp:RequiredFieldValidator>                                       
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right ;color: Black; font-size: 0.7em;">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="txtPassword" Font-Bold="True" Font-Italic="True">Contraseña:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="100" Font-Bold="True" Font-Italic="False"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="txtPassword"
                                                ErrorMessage="La contraseña es obligatoria." 
                                                ToolTip="La contraseña es obligatoria." ForeColor="#CC0000"
                                                >*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2" style="color: Red; font-size: 0.7em;">
                                            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right" colspan="2">
                                            <asp:Button ID="LoginButton" runat="server" CommandName="Login" 
                                                Text="Ingresar"  
                                                style="color: White; background-color: #999999; font-size: 0.7em; font-weight: bold; padding: 2px;" 
                                                Width="102px" onclick="LoginButton_Click"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align: right">
                                            <asp:Label ID="lblVersion" runat="server" Font-Size="9px">ver 1.0</asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
    </div>
        </form>
</body>
</html>
