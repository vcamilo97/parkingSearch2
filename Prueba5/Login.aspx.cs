using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Prueba5.models;
using System.Web.Security;
using SimpleCrypto;
namespace Prueba5
{
    public partial class Login : System.Web.UI.Page
    {
        private DataClasses1DataContext db = new DataClasses1DataContext();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                if (Context.User.Identity.IsAuthenticated) {
                    Response.Redirect("inicio.aspx");
                }
            }

        }

        protected void btnIngresar_Click(object sender, EventArgs e)
        {
            try
            {
                string usuario = txtUsuario.Text.Trim();
                string contrasenna = txtContrasena.Text.Trim();

                if (usuario != "" && contrasenna != "")
                {

                    var persona = db.Persona.Where(x => x.usuario == usuario).FirstOrDefault();
                    ICryptoService cryptoService = new PBKDF2();
                    string contrasenaEncriptada = cryptoService.Compute(contrasenna, persona.salt);


                    if (persona != null)
                    {
                        if (cryptoService.Compare(persona.contrasenna, contrasenaEncriptada))
                        {
                            string nombreCompleto = persona.nombrePersona + " " + persona.apellidoPersona;

                            Session["Persona"] = persona.idPersona;
                            FormsAuthentication.RedirectFromLoginPage(nombreCompleto, true);
                            Session["anything"] = txtUsuario.Text;            
                            Response.Redirect("inicio1.aspx");

                        }
                        else
                        {                          
                            ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaPassFail", "window.onload = function(){alert('contraseña es incorrecta');};", true);
                        }                                          
                    }

                    var persona2 = db.Persona.Where(x => x.usuario == usuario).FirstOrDefault();
                    ICryptoService cryptoService2 = new PBKDF2();
                    string contrasenaEncriptada2 = cryptoService2.Compute(contrasenna, persona.salt);


                    if (persona != null)
                    {
                        if (cryptoService.Compare(persona.contrasenna, contrasenaEncriptada))
                        {
                            string nombreCompleto = persona.nombrePersona + " " + persona.apellidoPersona;

                            Session["Persona"] = persona2.idPersona;
                            FormsAuthentication.RedirectFromLoginPage(nombreCompleto, true);
                            Session["anything"] = txtUsuario.Text;
                            Response.Redirect("inicio1.aspx");



                        }
                        else
                        {

                            ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaPassFail", "window.onload = function(){alert('contraseña es incorrecta');};", true);
                        }




                    }





                    else
                    {
                        ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaLoginUsuario", "window.onload = function(){alert('usuario no existe');};", true);

                    }
                }
                else
                {
                    ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaLoginFail", "window.onload = function(){alert('usuario o contraseña deben estar llenos');};", true);
                }

            }
            catch {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaLoginUsuario", "window.onload = function(){alert('usuario no existe');};", true);
            }
        }

        protected void txtUsuario_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnRecuperar_Click(object sender, EventArgs e)
        {
            Response.Redirect("registroClientes.aspx");
        }
    }
}