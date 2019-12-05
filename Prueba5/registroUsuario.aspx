<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registroUsuario.aspx.cs" Inherits="Prueba5.registroUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
        <script src="js/controles.js"></script>

    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet"/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'/>
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"/>
    <link href="css/creative.min.css" rel="stylesheet"/>

    <style type="text/css">
        /*.auto-style4 {
            height: 23px;
            width: 407px;
        }
        .auto-style5 {
            width: 407px;
        }
        .auto-style8 {
            width: 407px;
            height: 29px;
        }
        .auto-style12 {
            height: 26px;
        }*/
        .testboc {
            background-color: white;
            border: 2px solid black;
            padding: 15px;
            text-align: center;
            margin: 20px auto;
            width: 500px;
            align-items: normal;
        }

    </style>
</head>
<body style="height: 600px; width: 100%; background-color:#FFF9F1"">
    <form id="form1" runat="server">
        <div>
            <table style="width:100%;">
                <tr>
                    <td class="auto-style4">
                        &nbsp;</td>
                    
                </tr>
                <tr>
                    <td class="auto-style5">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    
                </tr>

            </table>
            <div class="testboc">
            <table style="width: 100%;" >
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtNom" runat="server" placeholder="Nombre completo" class="btn btn-light btn-xl js-scroll-trigger name"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtUser1" runat="server" placeholder="Nombre del usuario" class="btn btn-light btn-xl js-scroll-trigger name" ></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:TextBox ID="txtPass" runat="server" placeholder="Contraseña" class="btn btn-light btn-xl js-scroll-trigger"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:TextBox ID="txtPass1" runat="server" placeholder="Confirmar contraseña" class="btn btn-light btn-xl js-scroll-trigger"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:Label ID="lbl1" runat="server"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNom" ErrorMessage="Ingresar Nombre" EnableClientScript="False"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUser1" ErrorMessage="Ingresar Usuario"></asp:RequiredFieldValidator>
                    </td>
                </tr>
            </table>
            </div>

            &nbsp;<div class="testboc">
            <table style="width:100%;">
                <tr>
                    <td>
                        <asp:Button ID="btnRegistro" runat="server" OnClick="btnRegistro_Click" Text="Registrar" class="btn btn-primary btn-xl js-scroll-trigger btnAction"/>
                    </td>
                    <td>
                        <asp:Button ID="btnCancel" runat="server" OnClick="btnCancel_Click" Text="Cancelar" class="btn btn-light btn-xl"/>
                    </td>
                </tr>

            </table>

               
            </div>
        </div>
    <p>
        &nbsp;</p>
    </form>
    </body>
</html>
