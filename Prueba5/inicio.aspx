<%@ Page Language="C#" AutoEventWireup="true"  EnableSessionState="ReadOnly" CodeBehind="inicio.aspx.cs" Inherits="Prueba5.inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
            <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
                <title></title>
            <link href="css/style.css" rel="stylesheet" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
            <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

            <style type="text/css">
                /*#main-content {
                    max-width: 800px;
                    margin:  auto;
                    padding: 100px 0 0;
                    height: 100px;
                }

                .responsive {
                    width: 100%;
                    height: 0px;
                    padding-bottom: 56.25%;
                    position: relative;
                }

                .responsive iframe {
                    position: absolute;
                    width: 200%;
                    height: 170%;
                }

                .auto-style1 {
                    left: -419px;
                    top: -88px;
                    width: 124%;
                    height: -7px;
                }*/

                [style*="--aspect-ratio"] > :first-child {
                    width: 100%;
                }

                [style*="--aspect-ratio"] > img {  
                    height: auto;
                }

                @supports (--custom:property) {
                        [style*="--aspect-ratio"] {
                            position: relative;
                        }

                        [style*="--aspect-ratio"]::before {
                            content: "";
                            display: block;
                            padding-bottom: calc(100% / (var(--aspect-ratio)));
                        }

                        [style*="--aspect-ratio"] > :first-child {
                            position: absolute;
                            top: 0;
                            left: 0;
                            height: 100%;
                        }
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

                .box {
                    position: absolute;
                    top: 50%;
                    left: 50%;
                    transform: translate(-50%, -50%);
                }
         
            </style>
        </head>

        <body onload="disco()">
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
                <a class="nav-item nav-link active" href="#">Home <span class="sr-only">(current)</span></a>



                <a class="nav-item nav-link" href="set.aspx">Menu Mall</a>
                <asp:Label ID="Label1" runat="server" class="nav-item nav-link" Text="User Name:"></asp:Label><asp:Label ID="lbl2" class="nav-item nav-link" runat="server" Text="Label"></asp:Label>
                <asp:Button ID="Button2" runat="server" Text="Cerrar Sesion" CssClass="nav-item btn btn-danger" />
                <%--<a class="nav-item nav-link" href="#">Pricing</a>--%>                <%--<a class="nav-item nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>--%>
            </div>
        </div>
</nav>
            
        <div style="--aspect-ratio: 16/9;">
            <iframe src="crudGoogle.aspx" width="1600" height="800" frameborder="0"></iframe>
         </div> 
                
       


        </form>

           
    </body>
</html>
