<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="api1.aspx.cs" Inherits="Prueba5.api1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>

    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap-theme.min.css"/>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="https://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>

        <script type="text/javascript" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26616.166983743708!2d-70.61833672446487!3d-33.50083406132051!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662d06740d326ad%3A0xc2aeb2b3408edffa!2sMallplaza%20Vespucio!5e0!3m2!1ses-419!2scl!4v1572216694859!5m2!1ses-419!2scl" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" "></script>


    <script src="js/locationpicker.jquery.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
       
            
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d26616.166983743708!2d-70.61833672446487!3d-33.50083406132051!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662d06740d326ad%3A0xc2aeb2b3408edffa!2sMallplaza%20Vespucio!5e0!3m2!1ses-419!2scl!4v1572216694859!5m2!1ses-419!2scl" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
         <div class="container">
            <button type="button" data-toggle="modal" data-target="#ModalMap" class="btn btn-default">
                <span class="glyphicon glyphicon-map-marker"></span><span id="ubicacion">Seleccionar Ubicacion</span>
            </button>

            <style>
                .pac-container {
                    z-index:99999;
                }
            </style>

            <div class="modal fade" id="ModalMap" tabindex="-1" role="dialog">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-body">
                            <div class="form-horizontal">
                                <div class="form-group">
                                    <label class="col-sm-2 control-label"> Ubicacion</label>
                                    <div class="col-sm-9">
                                        <asp:TextBox ID="ModalMapaddress" CssClass="form-control" runat="server"></asp:TextBox>


                                    </div>
                                    <div class="col-sm-1">
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                </div>

                                <div id="ModalMapPreview" style="width:100%; height:400px;"></div>
                                <div class="clearfix">&nbsp;</div>
                                <div class="p-r-media">
                                    <label class="p-r-small col-sm-1 control-label">lat.:</label>
                                    <div class="col-sm-3">
                                        <asp:TextBox ID="ModalMapLat" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>  

                                    <label class="p-r-small col-sm-1 control-label">long.:</label>
                                    <div class="col-sm-3">
                                        <asp:TextBox ID="ModalMapLong" CssClass="form-control" runat="server"></asp:TextBox>
                                    </div>  

                                    <div class="col-sm-3">
                                        <button type="button" class="btn btn-primary btn-block"  data-dismiss="modal">Aceptar</button>
                                    </div>
                                </div>
                                <div class="clearfix"></div>





                                <script>
                                    $('#ModalMapPreview').locationpicker({
                                        radius: 0,
                                        location: {
                                            latitude: -33.5950597,
                                            longitude: -70.6020282
                                        },
                                        enableAutocomplete: true, 
                                        inputBinding: {
                                            latitudeInput:$('#<%=ModalMapLat.ClientID%>'),
                                            longitudeInput: $('#<%=ModalMapLong.ClientID%>'),
                                            locationNameInput:$('#<%=ModalMapaddress.ClientID%>')
                                        }, 
                                        onchanged: function (currrentLocation, radius, isMarkerDropped) {
                                            $('#ubicacion').html($().val('#<%=ModalMapaddress.ClientID%>'));
                                        }
                                    });

                                    $('#ModalMap').on('show.bs.modal', function () {
                                        $('#ModalMapPreview').locationpicker('autosize');

                                    });
                                </script>
                                



                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        
    </form>
</body>
</html>
