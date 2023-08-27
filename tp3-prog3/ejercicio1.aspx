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
        }
        .auto-style15 {
            height: 51px;
            width: 159px;
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
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" Text="Nombre de Localidad:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TbLocalidad" runat="server" Width="151px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="rfvLocalidad" runat="server" ControlToValidate="TbLocalidad">Ingrese una localidad</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revLocalidad" runat="server" ControlToValidate="TbLocalidad" ValidationExpression="^([A-Za-z0-9]+\s*)+$">El nombre de localidad es inválido</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td class="auto-style13">
                        <asp:Button ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" Width="151px" OnClick="btnGuardarLocalidad_Click" />
                    </td>
                    <td>
                        <asp:Label ID="lblErrorLocalidad" runat="server" ForeColor="Red"></asp:Label>
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
                        <asp:TextBox ID="TbNombreUsuario" runat="server" Width="151px"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Contraseña:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="TbContraseña" runat="server" Width="151px"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Repetir Contraseña:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="tbRepetirContraseña" runat="server" Width="151px"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        Correo electrónico:</td>
                    <td class="auto-style13">
                        <asp:TextBox ID="tbCorreo" runat="server" Width="151px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblCP" runat="server" Text="CP:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:TextBox ID="txtCP" runat="server"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="lblLocalidades" runat="server" Text="Localidades:"></asp:Label>
                    </td>
                    <td class="auto-style13">
                        <asp:DropDownList ID="ddlLocalidades" runat="server">
                        </asp:DropDownList>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style13">
                        <asp:Button ID="btnGuardarUsuario" runat="server" Text="Guardar Usuario" />
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
                        <asp:Button ID="btnIrAInicio" runat="server" Text="Ir a inicio .aspx" />
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