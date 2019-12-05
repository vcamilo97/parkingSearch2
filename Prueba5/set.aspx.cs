using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba5
{
    public partial class set : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["anything"] != null)
            {
                Panel11.Visible = false;
                Panel1.Visible = true;
                
            }
            else
            {

                Label2.Text = "Para acceder a este contenido debes estar inscrito en el servicio nacional de la discapacidad.";
                Panel1.Visible = false;
            }
        }
    }
}