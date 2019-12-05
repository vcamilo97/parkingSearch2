<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="duino.aspx.cs" Inherits="Prueba5.duino" %>

<!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="Scripts/jquery-3.3.1.js"></script>

    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

        <script type="text/javascript">
            var cronometro;
            var pesos;

            function detenerse() {
                clearInterval(cronometro);

            }

            function carga() {
                contador_s = 0;
                contador_m = 0;
                contador_h = 0;
                contador_p = 0;

                s = document.getElementById("segundos");
                m = document.getElementById("minutos");
                h = document.getElementById("horas");
                p = document.getElementById("pesos");

                cronometro = setInterval(
                    function () {
                        if (contador_s == 60) {
                            contador_s = 0;
                            contador_m++;
                            contador_p = contador_p + 5;//relaccionado al mall
                            m.innerHTML = contador_m;
                            p.innerHTML = contador_p;


                            if (contador_m == 60) {
                                contador_m = 0;
                                contador_h++;
                                h.innerHTML = contador_h;

                            }

                            if (contador_h == 24) {
                                contador_h = 0;
                            }


                        }

                        s.innerHTML = contador_s;
                        contador_s++;

                    }
                    , 100);
            }
        </script>

    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

    <style type="text/css">

           .texto-borde {
                -webkit-text-stroke: 0.4px #10A706;
                color: transparent;
           }

          
    </style>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
        </div>
        

        <%--<asp:Panel ID="Panel1" runat="server" Height="29px">
        <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar">ss</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
            
                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="#"><asp:Label ID="Label4" runat="server" Text="User Name: "><asp:Label ID="Label5" runat="server" Text="Usuario no encontrado"></asp:Label></asp:Label></a></li>
                    </ul>
                </div>
            </nav>
            </asp:Panel>--%>

        
        

        
    <div class="list-group" >
    <a href="#" class="list-group-item list-group-item-action list-group-item-danger" ><h2 style="color: #0C9203" class="texto-borde">Estacionamiento Paris</h2><img src="imagen/Paris.png" width="100" height="63"/> Av. Vicuña Mackenna Oriente 6100 

        <table class="nav-justified">
            <tr>
                <td>Estacionamiento A1: 
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label1" runat="server"></asp:Label>
                                <br />
                
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                <br />

                            <asp:Timer ID="Timer1" runat="server" Interval="100" OnTick="Timer1_Tick"></asp:Timer>

                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                <br />
                            
                        </ContentTemplate>
                    </asp:UpdatePanel>

                   

                    <p>
                        <span id="horas">0</span>:<span id="minutos">0</span>:<span id="segundos">0</span>  -  $<span id="pesos">0</span>                                    
                        <input type="button" onclick="carga()" value="Inicio" class="btn btn-success"/>
                        <input type="button" onclick="detenerse()" value="detenerse" class="btn btn-danger"/>
                    </p>

                </td>
                
                <%--<td>Estacionamiento A2:
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label4" runat="server"></asp:Label>
                                <br />
                
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                <br />

                            <asp:Timer ID="Timer2" runat="server" Interval="100" OnTick="Timer1_Tick"></asp:Timer>

                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                <br />

                        </ContentTemplate>
                    </asp:UpdatePanel>--%>

                <%--</td>
            </tr>
            <tr>
                <td colspan="2">
                  
                </td>
            </tr>--%>
            </table>


       <%-- </a>&nbsp;
        <a href="#" class="list-group-item list-group-item-action list-group-item-danger"><h2>Estacionamiento La Polar</h2><img src="imagen/La%20Polar.png" width="100" height="63"/> Av. Vicuña Mackenna Oriente 6100 
            <table style="width:100%;">
            <tr>
                <td>Estacionamiento A1: 
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label7" runat="server"></asp:Label>
                                <br />
                
                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                <br />

                            <asp:Timer ID="Timer3" runat="server" Interval="100" OnTick="Timer1_Tick"></asp:Timer>

                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                <br />

                        </ContentTemplate>
                    </asp:UpdatePanel>

                </td>
                <td>Estacionamiento A2:
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label10" runat="server"></asp:Label>
                                <br />
                
                            <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                                <br />

                            <asp:Timer ID="Timer4" runat="server" Interval="100" OnTick="Timer1_Tick"></asp:Timer>

                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                                <br />

                        </ContentTemplate>
                    </asp:UpdatePanel>

                </td>
                <td>Estacionamiento A3:
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label13" runat="server"></asp:Label>
                                <br />
                
                            <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
                                <br />

                            <asp:Timer ID="Timer5" runat="server" Interval="100" OnTick="Timer1_Tick"></asp:Timer>

                            <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                                <br />

                        </ContentTemplate>
                    </asp:UpdatePanel>

                </td>
            </tr>
            <tr>
                <td colspan="2"></td>
            </tr>
            </table>
        </a>
  <a href="#" class="list-group-item list-group-item-action list-group-item-danger">Secondary item</a>
  <a href="#" class="list-group-item list-group-item-action list-group-item-danger">Info item</a>
  <a href="#" class="list-group-item list-group-item-action">Warning item</a>
  <a href="#" class="list-group-item list-group-item-action">Danger item</a>
  <a href="#" class="list-group-item list-group-item-action">Primary item</a>
  <a href="#" class="list-group-item list-group-item-action">Dark item</a>
  <a href="#" class="list-group-item list-group-item-action">Light item</a>
</div>--%>

        



    </form>
</body>
</html>
