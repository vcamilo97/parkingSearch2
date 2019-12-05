using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Modelos;

namespace Prueba5
{
    public partial class RegistroMensajero : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            string nombre = txtNombrePersona.Text.Trim();
            string apellidos = txtApellidos.Text.Trim();
            string usuario = txtUsuario.Text.Trim();
            string contrasenna = txtContrasenna.Text.Trim();
            int edad = int.Parse(txtEdad.Text.Trim());

            ModelPersona persona = new ModelPersona();
            persona.Nombrepersona = nombre;
            persona.Apellidopersona = apellidos;
            persona.Edad = edad;
            persona.Usuario = usuario;
            persona.Contrasenna = contrasenna;
            persona.Salt = "";

            int resultado = persona.SP_crearMensajero();
            if (resultado == 1)
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaExito", "window.onload = function() {alert('Mensajero registrado');}",true);
            }
            else {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaError", "window.onload = function() {alert('Mensajero no registrado');}", true); 
            }
        }
    }
}