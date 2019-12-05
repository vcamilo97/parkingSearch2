using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Prueba5.models;


namespace Prueba5
{
    public partial class inicioSesion : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string usuario = txtUser.Text;
            string password = txtPass.Text;
            var consulta = from m in db.usuario
                           select new
                           {
                               m.idUsuario,
                               m.nombreCompleto,
                               m.nombreUsuario,
                               m.password1,
                           };
            foreach (var x in consulta) {
                if (x.nombreUsuario == usuario && x.password1 == password)
                {
                    Session["user"] = x.nombreUsuario;
                    Response.Redirect("inicio.aspx");

                }
                else {
                    Label3.Text = "Usuario no registrado";
                
                }
            }
        }

        protected void btnOtro_Click(object sender, EventArgs e)
        {
            Response.Redirect("registroUsuario.aspx");
        }

        protected void txtUser_TextChanged(object sender, EventArgs e)
        {

        }
    }
}