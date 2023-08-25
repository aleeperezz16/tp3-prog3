<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ejercicio1.aspx.cs" Inherits="tp3_prog3.ejercicio1" %>

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
            height:40px;
            width: 150px;

        }
        .auto-style3 {
            width: 150px;
            height: 35px;
        }
        .auto-style4 {
            height: 35px;
            width:90px;
        }
        .auto-style5{
            padding-top:30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellspacing="5" class="auto-style1">
                <tr>
                    <td></td>
                    <td class="auto-style4">
                        <asp:Label runat="server" Font-Bold="True" Text="Localidades"></asp:Label>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label runat="server" Text="Nombre de Localidad:"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TbLocalidad" runat="server" Width="151px"></asp:TextBox>
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td class="auto-style2"></td>
                    <td>
                        <asp:Button ID="btnGuardarLocalidad" runat="server" Text="Guardar Localidad" Width="151px" />
                    </td>
                    <td></td>
                </tr>
                <tr>
                    <td></td>
                    <td class="auto-style5">
                        <asp:Label ID="Label1" runat="server" Text="Usuarios" Font-Bold="true"></asp:Label>
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>