<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroMensajero.aspx.cs" Inherits="Prueba5.RegistroMensajero" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" Text="Nombre Persona"></asp:Label>
                        <asp:TextBox ID="txtNombrePersona" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" Text="Apellidos Persona"></asp:Label>
                        <asp:TextBox ID="txtApellidos" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label5" runat="server" Text="Edad Persona"></asp:Label>
                        <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" Text="Usuario"></asp:Label>
                        <asp:TextBox ID="txtUsuario" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Label ID="Label4" runat="server" Text="Contraseña"></asp:Label>
                        <asp:TextBox ID="txtContrasenna" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" CssClass="btn btn-success" OnClick="btnGuardar_Click" />
                    </div>

                </div>
            </div>
        </div>
    </form>

    <script src="Scripts/jquery-3.3.1.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
