<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="crudGoogle.aspx.cs" Inherits="Prueba5.crudGoogle" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
        <head runat="server">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>


        <script type="text/javascript" src='https://maps.google.com/maps/api/js?sensor=false&libraries=places&key=AIzaSyDOQFo5WiO0Ng_8fgMn3C6PdTxCnq6qOSU'></script>
        <script src="js/locationpicker.jquery.js"></script>
        <title></title>

        <style type="text/css">
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

                .auto-style1 {
                    left: 9px;
                    top: -77px;
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

                input[type=text] {
                    background-color: transparent;
                    color: black;
                    border: 1px solid red;
                    border-radius: 6px;
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

        </style>
    </head>


    <body>
        <form id="form1" runat="server">
            <div class="container">
            <div class="col-md-4">

                <asp:Panel ID="Panel3" runat="server">
                    <div class="form-group">
                        <label for="exampleInputEmail1">Ubicacion</label>
                        <asp:HiddenField ID="txtID" runat="server"/>
                        <asp:TextBox ID="txtUbicacion" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                </asp:Panel>

                <asp:Panel ID="Panel2" runat="server" Align="center">
                    <div class="form-group">
                        <div id="ModalMapPreview" style="width: 100; height: 300px" align="center"></div>
                    </div>

                    <div>
                        <label for="exampleInputPassword1">Latitud:</label>
                            <asp:TextBox ID="txtLat" Text="" CssClass="form-control"  runat="server"></asp:TextBox>
                        <label for="exampleInputPassword1">Longitud:</label>
                            <asp:TextBox ID="txtLong" Text="" CssClass="form-control"  runat="server"></asp:TextBox>
                        <label for="exampleInputPassword1">Nombre Local:</label>
                            <asp:TextBox ID="txtLocal" Text="" CssClass="form-control" runat="server"></asp:TextBox>
                        <label for="exampleInputPassword1">Estado:</label>
                            <asp:TextBox ID="txtEstado" Text="" CssClass="form-control"  runat="server"></asp:TextBox>
                        <label for="exampleInputPassword1">Id cliente:</label>
                            <asp:TextBox ID="txtCliente" Text="" CssClass="form-control"  runat="server"></asp:TextBox>
                        <br />
                    </div>
                </asp:Panel>


                    <div class="form-group">
                        <asp:Button ID="btnAgregar" CssClass="btn btn-success" runat="server" Text="Agregar" UseSubmitBehavior="false" OnClick="AgregarRegistro"/>
                        <asp:Button ID="btnModificar" CssClass="btn btn-warning" runat="server" Text="Modificar" UseSubmitBehavior="false" Enabled="false" OnClick="ModificarRegistro"/>
                        <asp:Button ID="btnEliminar" CssClass="btn btn-danger" runat="server" Text="Eliminar" UseSubmitBehavior="false" Enabled="false" OnClick="EliminarRegistro"/>
                        <asp:Button ID="btnLimpiar" CssClass="btn btn-default" runat="server" Text="Limpiar" UseSubmitBehavior="false" OnClick="LimpiarPL"/>
                    </div>

            </div>


            <asp:Panel ID="Panel4" runat="server">
                <div class="col-md-8">
                    <br />
                        <h2 align="center">Ubicaciones</h2>
                            <center>
                                <asp:GridView ID="gvubicaciones" runat="server" CssClass="table-responsive table table-borderder" Width="408px" OnRowCommand="SeleccionRegistro" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal">
                                
                                    <Columns>
                                        <asp:ButtonField CommandName="btnSeleccionar" Text="Seleccionar">
                                            <ControlStyle CssClass="btn btn-success" />
                                        </asp:ButtonField>
                                    </Columns>

                                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                                    <SortedDescendingHeaderStyle BackColor="#242121" />
                                </asp:GridView>
                            </center>
                    <br />
                </div>  
            </asp:Panel>

                <asp:Panel ID="Panel11" runat="server">
                <p>
                <nav class="navbar navbar-default" role="navigation">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>

                <div class="navbar-collapse collapse">
                    <ul class="nav navbar-nav navbar-left">
                        <li><a href="#"><asp:Label ID="Label3" runat="server" Text="User Name: "><asp:Label ID="Label1" runat="server"></asp:Label></asp:Label></a></li>
                    </ul>

                    <%--<ul class="nav navbar-nav navbar-left">
                        <li><a href="#"><asp:Button ID="Button3" runat="server" Text="Cerrar Sesion"/></a></li>
                    </ul>--%>
                </div>
            </nav>
            <center><asp:Label ID="Label2" runat="server"></asp:Label></center>

                    <div class="box">

                </asp:Panel>
        </div>


        <script>
            $('#ModalMapPreview').locationpicker({
                radius: 0,
                location: {
                    latitude: $('#<%=txtLat.ClientID%>').val(),
                    longitude: $('#<%=txtLong.ClientID%>').val()
                },
                inputBinding: {
                    latitudeInput: $('#<%=txtLat.ClientID%>'),
                    longitudeInput: $('#<%=txtLong.ClientID%>'),
                    locationNameInput: $('#<%=txtUbicacion.ClientID%>')
                },
                enableAutocomplete: true
            });
        </script>
    </form>

    </body>
</html>
