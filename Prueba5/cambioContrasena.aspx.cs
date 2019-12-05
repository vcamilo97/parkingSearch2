using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Prueba5.models;
using SimpleCrypto;
using System.Web.Security;

namespace Prueba5
{
    public partial class cambioContrasena : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["anything"] != null)
            {

                Panel11.Visible = false;
                Panel1.Visible = true;
                txtRepetir.Visible = false;
            }
            else
            {
      
                Label2.Text = "Para acceder a este contenido debes estar inscrito en el servicio nacional de la discapacidad.";
                Panel1.Visible = false;
                txtRepetir.Visible = false;
            }
        }

        protected void btnCambiarContrasena_Click(object sender, EventArgs e)
        {
            int idPersona = int.Parse(Session["Persona"].ToString());
            string contrasenaAnterior = txtContrasenaAnterior.Text.Trim();
            string contrasenaNueva = txtNuevaContrasena.Text.Trim();


            var persona = db.Persona.Where(x => x.idPersona == idPersona).FirstOrDefault();



            try
            {
                if (persona != null)
                {
                    ICryptoService cryptoService = new PBKDF2();

                    string contrasenaEncriptada = cryptoService.Compute(contrasenaAnterior, persona.salt);

                    if (cryptoService.Compare(persona.contrasenna, contrasenaEncriptada))
                    {
                        string salt = cryptoService.GenerateSalt();
                        string contrasenaNuevaEncriptada = cryptoService.Compute(contrasenaNueva);

                        persona.salt = salt;
                        persona.contrasenna = contrasenaNuevaEncriptada;

                        try
                        {
                            db.SubmitChanges();
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaErrorCambio", "window.onload = function(){alert('La contraseña se cambio exitosamente');};", true);

                        }
                        catch (Exception ex)
                        {
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaErrorCambio", "window.onload = function(){alert('La contraseña no se cambio');};", true);

                        }
                    }
                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaLoginUsuario", "window.onload = function(){alert('La contraseña anterior no coincide');};", true);

                    }

                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaLoginUsuario", "window.onload = function(){alert('El usuario no existe');};", true);

                }
            }
            catch {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaLoginUsuario", "window.onload = function(){alert('Los campos no se llenaron correctamente');};", true);
            }





            //if (persona != null)
            //{
            //    ICryptoService cryptoService = new PBKDF2();

            //    string contrasenaEncriptada = cryptoService.Compute(contrasenaAnterior, persona.salt);

            //    if (cryptoService.Compare(persona.contrasenna, contrasenaEncriptada))
            //    {
            //        string salt = cryptoService.GenerateSalt();
            //        string contrasenaNuevaEncriptada = cryptoService.Compute(contrasenaNueva);

            //        persona.salt = salt;
            //        persona.contrasenna = contrasenaNuevaEncriptada;

            //        try
            //        {
            //            db.SubmitChanges();
            //        }
            //        catch(Exception ex) {
            //            ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaErrorCambio", "window.onload = function(){alert('La contraseña no se cambio');};", true);

            //        }
            //    }
            //    else
            //    {
            //        ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaLoginUsuario", "window.onload = function(){alert('La contraseña anterior no coincide');};", true);

            //    }

            //}
            //else {
            //    ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaLoginUsuario", "window.onload = function(){alert('El usuario no existe');};", true);

            //}

        }
    }
}