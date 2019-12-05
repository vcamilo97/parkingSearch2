using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Prueba5.models;
using SimpleCrypto;

namespace Prueba5
{
    public partial class registroClientes : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {


            try {
                string nombre = txtNombrePersona.Text.Trim();
                string apellidos = txtApellidos.Text.Trim();
                string usuario = txtUsuario.Text.Trim();
                string contrasenna = txtContrasenna.Text.Trim();
                int edad = int.Parse(txtEdad.Text.Trim());
                string email = txtEmail.Text.Trim();

                ICryptoService cryptoService = new PBKDF2();

                string salt = cryptoService.GenerateSalt();
                string contrasenaEncriptada = cryptoService.Compute(contrasenna);



                Persona objPersona = new Persona();
                objPersona.nombrePersona = nombre;
                objPersona.apellidoPersona = apellidos;
                objPersona.usuario = usuario;
                objPersona.contrasenna = contrasenaEncriptada;
                objPersona.edad = edad;
                objPersona.salt = salt;
                objPersona.estado = 1;
                objPersona.idTipoPersona = 2;
                objPersona.email = email;


                try
                {
                    db.Persona.InsertOnSubmit(objPersona);
                    db.SubmitChanges();
                }
                catch (Exception)
                {
                    throw;

                }
            }
            catch {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaPassFail", "window.onload = function(){alert('Debe rellenar la solicitud');};", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
       
}