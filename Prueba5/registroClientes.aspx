<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registroClientes.aspx.cs" Inherits="Prueba5.registroClientes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>

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


        function checkpassword() {
            var p = f.pass.value;
            var cp = f.cpass.value;

            if (p == cp)
                alert("Las contraseñas coinciden")
            else
                alert("mismatch")
            msg = (p == cp) ? "both are some" : "mismatch";
            alert(msg)
        }

            
    </script>

    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }

        .testboc {             
            border: 3px solid orange;
            padding: 15px;
            text-align: center;
            margin: 20px auto;
            width: 500px;
            border-radius: 30px;
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

        input[type=email] {
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

            footer {
                background-color: black;
                position: absolute;
                bottom: 0;
                width: 100%;
                color: #4BB606;
            }

            .dgcAlert {top: 0;position: absolute;width: 100%;display: block;height: 1000px; text-align:center; opacity:0; display:none; z-index:999999999999999;}
            .dgcAlert .dgcVentana{width: 430px; height:170px; background:white ;min-height: 150px;position: relative;margin: 0 auto;color: black;padding: 10px;border-radius: 10px;border: 3px solid orange;}
            .dgcAlert .dgcVentana .dgcCerrar {height: 25px;width: 25px;float: right; cursor:pointer; background: url(http://www.dgcmedia.es/recursosExternos/cerrarAlert.jpg) no-repeat center center;}
            .dgcAlert .dgcVentana .dgcMensaje { margin: 0 auto; padding-top: 45px; text-align: center; width: 400px;font-size: 20px;}
            .dgcAlert .dgcVentana .dgcAceptar{background:green; bottom:20px; display: inline-block; font-size: 12px; font-weight: bold; height: 24px; line-height: 24px; padding-left: 5px; padding-right: 5px;text-align: center; text-transform: uppercase; width: 75px;cursor: pointer; color:#FFF; margin-top:50px; }
    </style>
</head>

<body>
    <form id="form1" runat="server" name="f">

        <script src="Scripts/jquery-3.3.1.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="crudGoogle.aspx">Parking Search</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-item nav-link active" href="#" style="color: #0C9203">Registrate<span class="sr-only">(current)</span></a>
                    </div>
                </div>
            </nav>

        <div class="container">
        
        </div>
        <asp:Panel ID="Panel1" runat="server" CssClass="testboc">
            <table style="width:100%;">
                 <tr>
                    <td colspan="2">
                       <br />
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtNombrePersona" runat="server" CssClass="" placeholder="Nombre: " Width="300px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtApellidos" runat="server" CssClass="" placeholder="Apellido: " Width="300px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtEdad" runat="server" CssClass="" placeholder="Edad: " Width="300px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="" placeholder="Nombre usuario: " Width="300px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtContrasenna" runat="server" CssClass="" placeholder="Contraseña" TextMode="Password" Width="300px" name="pass"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtConfirmar" name="cpass" runat="server" CssClass="" placeholder="Confirmar Contraseña" TextMode="Password" Width="300px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="" placeholder="Email" TextMode="Email" Width="300px"></asp:TextBox>
                    </td>
                </tr>

                 <tr>
                    <td colspan="2">
                        <br />
                        <asp:Label ID="error2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>

                <tr>
                    <td class="auto-style1">
                        <asp:Button ID="btnGuardar" runat="server" CssClass="btn btn-success" OnClick="btnGuardar_Click" Text="Guardar" Width="120px" />
                    </td>

                    <td class="auto-style1">
                        <asp:Button ID="Button1" runat="server" Text="Volver" CssClass="btn btn-warning" Width="120px" OnClick="Button1_Click"/>
                    </td>
                </tr>

                <tr>
                    <td colspan="2">
                       <br />
                    </td>
                </tr>

                
            </table>
        </asp:Panel>

        <footer  style="width:100%; margin-left: 0px;"  >
            <div class="copyright" style="background-color: #4BB606;">
                <div class="container-fluid" style="background-color: #4BB606; color: #E5E5E5;">
                    ©2019 Parking Search
                </div>
            </div>
        </footer>
    </form>
    </body>
    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</html>