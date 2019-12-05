<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cambioContrasena.aspx.cs" Inherits="Prueba5.cambioContrasena" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

    <script type="text/javascript">
        function alertDGC(mensaje) {
            var dgcTiempo = 500
            var ventanaCS = '<div class="dgcAlert"><div class="dgcVentana"><div class="dgcCerrar"></div><div class="dgcMensaje">' + mensaje + '<br><div class="dgcAceptar">Aceptar</div></div></div></div>';
            $('body').append(ventanaCS);
            var alVentana = $('.dgcVentana').height();
            var alNav = $(window).height();
            var supNav = $(window).scrollTop();
            $('.dgcAlert').css('height', $(document).height());
            $('.dgcVentana').css('top', ((alNav - alVentana) / 2 + supNav - 100) + 'px');
            $('.dgcAlert').css('display', 'block');
            $('.dgcAlert').animate({ opacity: 1 }, dgcTiempo);
            $('.dgcCerrar,.dgcAceptar').click(function (e) {
                $('.dgcAlert').animate({ opacity: 0 }, dgcTiempo);
                setTimeout("$('.dgcAlert').remove()", dgcTiempo);
            });
        }
        window.alert = function (message) {
            alertDGC(message);
        };
    </script>

    <style type="text/css">         
           .testboc {             
                border: 3px solid orange;
                padding: 15px;
                text-align: center;
                margin: 20px auto;
                width: 500px;
                border-radius: 30px;
           }

           #main-content {
                max-width: 800px;
                margin: 0 auto;
                padding: 100px 0 0;
           }

           .responsive {
                width: 100%;
                height: 0;
                padding-bottom: 56.25%;
                position: relative;
           }

           .responsive iframe {
                position: absolute;
                width: 100%;
                height: 100%;
           }

           .footer {
                background-color: aqua;
                width: 100%;
                height: 50px;
                bottom: 0;
                text-align: center;
                color: #000;
           }

           input[type=text] {
                background-color: transparent;
                color: black;
                border: 1px solid red;
                border-radius: 6px;
           }

           input[type=password] {
                background-color: transparent;
                color: black;
                border: 1px solid red;
                border-radius: 6px;
           }

            body {
                margin: 0;
                padding: 0;
                animation: bgcolor infinite 20s;
            }

            h1 {
                margin: 0;
                padding: 0;
                font-family: Arial;
                font-size: 5em;
                color: #fff;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                text-align:center;
            }

            @keyframes bgcolor {
                 0% 
                 {
                    background: #FDFEFE;
                 }

                20% 
                {
                    background: #FBFCFC;
                }

                40% 
                {
                    background: #F7F9F9;
                }

                60% 
                {
                    background: #F7F9F9;
                }

                80% 
                {
                    background: #FBFCFC;
                }

                100% 
                {
                    background: #FDFEFE;
                }

            }

            .auto-style3 {
                height: 26px;
            }

            #MainTable {
                width: 100%;
                background-color: #D8F0DA;
                border: 1px;
                min-width: 100%;
                position: relative;
                opacity: 0.97;
                background: transparent;
            }   
            
            .dgcAlert {top: 0;position: absolute;width: 100%;display: block;height: 1000px; background: url(http://www.dgcmedia.es/recursosExternos/fondoAlert.png) repeat; text-align:center; opacity:0; display:none; z-index:999999999999999;}
            .dgcAlert .dgcVentana{width: 500px; background: white;min-height: 150px;position: relative;margin: 0 auto;color: black;padding: 10px;border-radius: 10px;}
            .dgcAlert .dgcVentana .dgcCerrar {height: 25px;width: 25px;float: right; cursor:pointer; background: url(http://www.dgcmedia.es/recursosExternos/cerrarAlert.jpg) no-repeat center center;}
            .dgcAlert .dgcVentana .dgcMensaje { margin: 0 auto; padding-top: 45px; text-align: center; width: 400px;font-size: 20px;}
            .dgcAlert .dgcVentana .dgcAceptar{background:#09C; bottom:20px; display: inline-block; font-size: 12px; font-weight: bold; height: 24px; line-height: 24px; padding-left: 5px; padding-right: 5px;text-align: center; text-transform: uppercase; width: 75px;cursor: pointer; color:#FFF; margin-top:50px;}
        </style>

</head>
<body>
    <form id="form1" runat="server">

        <script src="Scripts/jquery-3.3.1.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>

      
        <asp:Panel ID="Panel1" runat="server" CssClass="testboc">
            <table style="width:100%; text-align: center; table-layout: auto;" id="MainTable">
                <tr>
                    <td>
                        <asp:TextBox ID="txtContrasenaAnterior" runat="server" placeholder="Contraseña antigua" Width="200px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style3" >
                        <asp:TextBox ID="txtNuevaContrasena" runat="server" CssClass="" placeholder="Nueva contraseña" Width="200px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:TextBox ID="txtRepetir" runat="server" CssClass="" placeholder="Repetir Contraseña" Width="200px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td>
                        <asp:Button ID="btnCambiarContrasena" runat="server" CssClass="btn btn-success" OnClick="btnCambiarContrasena_Click" Text="Cambiar contraseña" Width="200" />
                    </td>
                </tr>               
            </table>
        </asp:Panel>



        <asp:Panel ID="Panel11" runat="server">
            <p>           
                <center><asp:Label ID="Label2" runat="server"></asp:Label></center>
                <div class="box">
        </asp:Panel>
            
  
    </form>
    </body>
</html>
