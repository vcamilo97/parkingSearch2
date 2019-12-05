<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="inicio1.aspx.cs" Inherits="Prueba5.inicio1" %>

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
  
    <style type="text/css">         
           .testboc {             
                border: 3px solid orange;
                padding: 15px;
                text-align: center;
                margin: 20px auto;
                width: 500px;
                border-radius: 30px;
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
            
            footer {
                background-color: black;
                position: absolute;
                bottom: 0;
                width: 100%;
                color: #4BB606;
            }
        </style>

</head>
<body>
    <form id="form1" runat="server">
        
        <script src="Scripts/jquery-3.3.1.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>

        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="crudGoogle.aspx">Parking Search</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link active" href="inicio1.aspx" style="color: #0C9203; background-color: #ECF0F1">Geolocalizacion<span class="sr-only">(current)</span></a>



                <a class="nav-item nav-link" href="set.aspx" target="ventana" style="color: #0C9203">Menu Mall</a>
                <a class="nav-item nav-link" href="cambioContrasena.aspx" target="ventana" style="color: #0C9203">Cambiar Contraseña</a>
                <asp:Label ID="Label1" runat="server" class="nav-item nav-link" style="color: #E87B07" Text="User Name:"></asp:Label><asp:Label ID="lbl2" class="nav-item nav-link" style="color: #E87B07" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="btnCerr" runat="server" Text="Cerrar Sesion" CssClass="nav-item btn btn-danger" OnClick="btnCerrar_Click" />
                <%--<a class="nav-item nav-link" href="#">Pricing</a>--%>                <%--<a class="nav-item nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>--%>
            </div>
        </div>
    </nav>

        <div style="--aspect-ratio: 16/9;">
            <iframe src="crudGoogle.aspx" width="1800" name="ventana" height="850" frameborder="0"></iframe>
         </div>

        <footer  style="width:100%; margin-left: 0px;"  >
            <div class="copyright" style="background-color: #4BB606;">
                <div class="container-fluid" style="background-color: #4BB606; color: #E5E5E5;">
                    ©2019 Parking Search
                </div>
            </div>
        </footer>

    </form>
</body>
</html>
