<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.Master" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="Sistema.Catalogos.Administrador" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Body" runat="server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="LblTitulo" runat="server"  Text="ADMINISTRADOR" CssClass="Bienvenidos"></asp:Label>
    <table style="width: 800px">
        <tr>
            <td class="" colspan="3">
                <fieldset>
                    <legend>
                        <asp:Label ID="LdDatos" Text="Datos" runat="server" CssClass="titulo"></asp:Label>
                    </legend>
                    <table style="width: 700px">
                        <tr>
                            <td class="auto-style1">
                                <asp:Label ID="LblUsuario" runat="server" Text="Usuario" CssClass="letraDestacada"></asp:Label>
                            </td>
                            <td class="auto-style1">
                                <asp:TextBox ID="TxtUsuario" runat="server" ></asp:TextBox>
                            </td>
                            <td class="auto-style1"></td>
                            <td class="auto-style1"></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LlbPassword" runat="server" Text="Password" CssClass="letraDestacada"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td>
                                <asp:Label ID="LblConfPassword" runat="server"   Text="Confirma Password" CssClass="letraDestacada"></asp:Label>
                            </td>
                            <td>
                                <asp:TextBox ID="TxtConfPassword" runat="server"  TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="LdlActivo" runat="server" Text="Activo" CssClass="letraDestacada"></asp:Label>
                            </td>
                            <td>
                                <asp:CheckBoxList ID="ChkActivo" runat="server" > 
                                </asp:CheckBoxList>
                            </td>
                            <td>
                                <asp:Label ID="LlbIdPerfil" runat="server" Text="Perfil" CssClass="letraDestacada"></asp:Label>
                            </td>
                            <td>
                                <dx:ASPxDropDownEdit ID="DdePerfil" runat="server" Theme="MetropolisBlue">
                                </dx:ASPxDropDownEdit>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                        </tr>
                    </table>
                </fieldset>
            </td>
            <td class="" rowspan="4">
                <asp:Image ID="Image1" runat="server" Height="167px" ImageUrl="~/Image/logotrans2.png" Width="313px" />
            </td>
        </tr>
        <tr>
            <td colspan="3" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnAgregar" runat="server" Text="Agregar Usuario" CssClass="botonNuevo" OnClick="BtnAgregar_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnModificar" runat="server" Text="Modificar Usuario" CssClass="botonGuardar"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="BtnCancelar" runat="server" Text="Cancelar" CssClass="botonCancelar"/>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td ></td>
            <td colspan="2" >
                <dx:ASPxGridView ID="ASPxGridView1" runat="server" Theme="MetropolisBlue" Width="800px">
                    <Columns>
                        <dx:GridViewDataTextColumn Caption="ID" Name="ID" FieldName="IdUsuario" ></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Usuario" Name="Usuario" FieldName="Usuario"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Password" Name="Password" FieldName="Password"></dx:GridViewDataTextColumn>
                        <dx:GridViewDataTextColumn Caption="Activo" Name="Activo" FieldName="Activo"></dx:GridViewDataTextColumn>
                    </Columns>
                </dx:ASPxGridView>
            </td>
        </tr>
        <tr>
            <td ></td>
            <td >
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td >
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td >&nbsp;</td>
            <td >
                &nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
