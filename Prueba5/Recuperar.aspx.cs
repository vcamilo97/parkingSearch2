using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SimpleCrypto;
using Prueba5.models;
using System.Configuration;
using System.Net.Mail;
using System.Net;


namespace Prueba5
{
    public partial class Recuperar : System.Web.UI.Page
    {
        private DataClasses1DataContext db = new DataClasses1DataContext();
        
         


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            string usuario = txtUsuario.Text.Trim();

            var persona = db.Persona.Where(x => x.usuario == usuario).FirstOrDefault();

            if (persona != null)
            {
                ICryptoService cryptoService = new PBKDF2();

                string contrasennaNueva = RandomPassword.Generate(10, PasswordGroup.Lowercase, PasswordGroup.Uppercase, PasswordGroup.Numeric, PasswordGroup.Special);

                string salt = cryptoService.GenerateSalt();
                string contrasennaCryptada = cryptoService.Compute(contrasennaNueva);

                try
                {
                    persona.salt = salt;
                    persona.contrasenna = contrasennaCryptada;
                    db.SubmitChanges();
                    enviarEmail(persona.email, contrasennaNueva);
                }
                catch(Exception) {
                    throw;
                }

            }
            else {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaUsuario", "window.onload = function(){alert('El usuario no existe.');};", true);

            }

        }

        public void enviarEmail(string enviarA, string contrasennaRecuperar)
        {

            string correoAdministrador = ConfigurationManager.AppSettings["correoElectronico"].ToString();
            string contrasenaAdministrador = ConfigurationManager.AppSettings["contrasennaCorreo"].ToString();

            string asunto = "Recuperar contraseña";
            string body = "Su nueva contraseña es: <strong>" + contrasennaRecuperar + "</strong>";

            var smtp = new SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 25;//587
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(correoAdministrador, contrasenaAdministrador);
                smtp.Timeout = 20000;
            }

            try
            {
                smtp.Send(correoAdministrador, enviarA, asunto, body);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaFailMensaje", "window.onload = function(){alert('El correo no fue enviado.');};", true);
            }

        }

        protected void btnVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}