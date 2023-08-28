<%@ Page Language="C#" UnobtrusiveValidationMode="None" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="tp3_prog3.ejercicio1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 40px;
            width: 159px;
        }
        .auto-style4 {
            height: 35px;
            width:164px;
        }
        .auto-style8 {
            height: 51px;
        }
        .auto-style9 {
            padding-top: 30px;
            height: 51px;
            width: 164px;
        }
        .auto-style13 {
            width: 164px;
        }
        .auto-style14 {
            width: 159px;
            height: 35px;
        }
        .auto-style15 {
            height: 51px;
            width: 159px;
        }
        .auto-style16 {
            height: 35px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellspacing="5" class="auto-style1">
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style4">
                        <asp:Label runat="server" Font-Bold="True" Text="Localidades"></asp:Label>
                    </td>
                    <td class="auto-style16"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" Text="Nombre de Localidad:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TbLocalidad" runat="server" Width="151px" ValidationGroup="Grupo1"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="TbLocalidad" ValidationGroup="Grupo1">Ingrese una localidad</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revLocalidad" runat="server" ControlToValidate="TbLocalidad" ValidationExpression="^([A-Za-z0-9]+\s*)+$" ValidationGroup="Grupo1">El nombre de localidad es inválido</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style13">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" Width="151px" OnClick="btnGuardarLocalidad_Click1" ValidationGroup="Grupo1" />
                    </td>
                    <td>
                        <asp:CustomValidator ID="cvLocalidad" runat="server" ControlToValidate="TbLocalidad" OnServerValidate="cvLocalidad_ServerValidate1" ForeColor="Red" ValidationGroup="Grupo1">Esa localidad ya fue ingresada</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style9">
                        <asp:Label ID="Label1" runat="server" Text="Usuarios" Font-Bold="true"></asp:Label>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Nombre Usuario:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TbNombreUsuario" runat="server" Width="151px" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvUsuario" runat="server" ControlToValidate="TbNombreUsuario" ValidationGroup="Grupo2">Ingrese un nombre de usuario</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Contraseña:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TbContrasenia" runat="server" Width="151px" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvContrasenia" runat="server" ControlToValidate="TbContrasenia" ValidationGroup="Grupo2">Ingrese una contraseña</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Repetir Contraseña:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="tbRepetirContrasenia" runat="server" Width="151px" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvRepetirContrasenia" runat="server" ControlToValidate="tbRepetirContrasenia" ValidationGroup="Grupo2">Repita su contraseña</asp:RequiredFieldValidator>
                        <br />
                        <asp:CompareValidator ID="cvRepetirContrasenia" runat="server" ControlToCompare="TbContrasenia" ControlToValidate="tbRepetirContrasenia" ValidationGroup="Grupo2">Las contraseñas no son iguales</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Correo electrónico:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="tbCorreo" runat="server" Width="151px" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RegularExpressionValidator ID="revCorreo" runat="server" ControlToValidate="tbCorreo" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ValidationGroup="Grupo2">Ingrese un correo valido</asp:RegularExpressionValidator>
                        <br />
                        <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="tbCorreo" ValidationGroup="Grupo2">Ingrese un correo</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblCP" runat="server" Text="CP:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtCP" runat="server" ValidationGroup="Grupo2"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvCP" runat="server" ControlToValidate="txtCP" ValidationGroup="Grupo2">Ingrese un código postal</asp:RequiredFieldValidator>
                        <br />
                        <asp:RangeValidator ID="rvCP" runat="server" ControlToValidate="txtCP" MaximumValue="9999" MinimumValue="1000" Type="Integer" ValidationGroup="Grupo2">El código postal debe ser un número de 4 dígitos</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblLocalidades" runat="server" Text="Localidades:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="ddlLocalidades" runat="server" ValidationGroup="Grupo2">
                            <asp:ListItem>--Seleccione localidad--</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvSeleccionarLocalidad" runat="server" ControlToValidate="ddlLocalidades" InitialValue="--Seleccione localidad--" ValidationGroup="Grupo2">Debe seleccionar una localidad</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style13">
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" ValidationGroup="Grupo2" />
                    </td>
                    <td>
                        <asp:Label ID="lblBienvenido" runat="server" Font-Bold="True"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Button ID="btnIrAInicio" runat="server" Text="Ir a inicio .aspx" ValidationGroup="Grupo3" />
                    </td>
                    <td class="auto-style13">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>