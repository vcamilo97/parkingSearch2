using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;


namespace Prueba5
{
    public partial class inicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["anything"] != null)
            {
                lbl2.Text = Convert.ToString(Session["anything"]);


            }
            else
            {
                lbl2.Text = "La sesion no fue encontrada";
                //btnOtro.Enabled = false;
                //btnOtro.Visible = false;
                //Label2.Text = "Para acceder a este contenido debes estar inscrito en el servicio nacional de la discapacidad.";
            }
            lbl2.Text = Convert.ToString(Session["anything"]);
        }

        protected void btnCerrar_Click(object sender, EventArgs e)
        {
            FormsAuthentication.SignOut();
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}