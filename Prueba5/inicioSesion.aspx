<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicioSesion.aspx.cs" Inherits="Prueba5.inicioSesion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<meta name="description" content=""/>
<meta name="author" content=""/>
    <title></title>

    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:400,700" rel="stylesheet"/>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'/>
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet"/>  
    <link href="css/creative.min.css" rel="stylesheet"/>



    <style type="text/css">
        .testboc {
            background-color: #FFEFE3;
            border: 0.5px solid black;
            padding: 15px;
            text-align: center;
            margin: 20px auto;
            width: 500px;
        }

        .footer {
            background-color: aqua;
            width: 100%;
            height: 50px;
            bottom: 0;
            text-align: center;
            color: #000;
        }
        .auto-style1 {
            height: 252px;
        }
        .auto-style2 {
            height: 26px;
        }
    </style>
</head>

    <body style="height: 600px; width: 100%; background-color:#FFF9F1" >

        <form id="form1" runat="server">
                <table style="width:100%;">
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>


            <div class="testboc">
                <table style="width:100%;">
                    <tr>
                        <td class="auto-style1">
                            <img src="imagen/yumminky-pc-43-512.png" width="250" height="250"/>
                        </td>                       
                    </tr>

                    <tr>
                        <td class="auto-style2">
                            <asp:TextBox ID="txtUser" runat="server" class="btn btn-light btn-xl js-scroll-trigger" OnTextChanged="txtUser_TextChanged" placeholder="Ingresar Usuario"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                    <td>
                            <asp:TextBox ID="txtPass" runat="server" class="btn btn-light btn-xl js-scroll-trigger" placeholder="Contraseña"></asp:TextBox>
                    </td>
                    </tr>
                    <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server"></asp:Label>
                    </td>
                    </tr>
                </table>
            </div>


            <div class="testboc">
                <table style="width:100%;">
                    <tr>
                        <td>
                            <asp:Button ID="btnIngreso" runat="server" OnClick="Button1_Click" Text="Iniciar Sesion" class="btn btn-primary btn-xl js-scroll-trigger" />
                        </td>
                        <td>
                            <asp:Button ID="btnOtro" runat="server" OnClick="btnOtro_Click" Text="No tengo cuenta" class="btn btn-light btn-xl" Width="203px"/>
                        </td>
                    </tr>
                </table>
            </div>  
        
        </form>
    </body>
</html>
