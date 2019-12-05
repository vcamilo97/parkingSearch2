using BLL;
using DAL;
using Prueba5.models;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Prueba5
{
    public partial class crudGoogle : System.Web.UI.Page
    {
        private DataClasses1DataContext db = new DataClasses1DataContext();

        ubicacionesBLL oUbicacionesBLL;
        ubicacionesDAL oUbicacionesDAL;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["anything"] != null)
            {
                Label1.Text = Session["anything"].ToString();
                Label1.Visible = false;
                Panel11.Visible = false;
            }
            else
            {
                Label1.Text = "La sesion no fue encontrada";
                txtID.Visible = false;
                btnAgregar.Visible = false;
                btnEliminar.Visible = false;
                btnLimpiar.Visible = false;
                btnModificar.Visible = false;
                txtUbicacion.Visible = false;
                Panel2.Visible = false;
                Panel3.Visible = false;
                Panel4.Visible = false;
                Label2.Text = "Para acceder a este contenido debes estar inscrito en el servicio nacional de la discapacidad.";
            }

            if (!IsPostBack) {
                ListarUbicaciones();
            }
        }

        public void ListarUbicaciones() {
            oUbicacionesDAL = new ubicacionesDAL();
            gvubicaciones.DataSource = oUbicacionesDAL.Listar();
            gvubicaciones.DataBind();
        }

        public ubicacionesBLL datosUbicacion() {
            int ID = 0;
            int.TryParse(txtID.Value, out ID);
            oUbicacionesBLL = new ubicacionesBLL();
            oUbicacionesBLL.ID = ID;
            oUbicacionesBLL.Ubicacion = txtUbicacion.Text;
            oUbicacionesBLL.Latitud = txtLat.Text;
            oUbicacionesBLL.Longitud = txtLong.Text;
            oUbicacionesBLL.nombreLocal = txtLocal.Text;
            //oUbicacionesBLL.estado = txtEstado
            oUbicacionesBLL.idCliente = txtCliente.Text;


            return oUbicacionesBLL;
        }

        protected void AgregarRegistro(object sender, EventArgs e)
        {

            string ubicacio = txtUbicacion.Text.Trim();
            if (ubicacio != "")
            {
                oUbicacionesDAL = new ubicacionesDAL();
                oUbicacionesDAL.Agregar(datosUbicacion());
                ListarUbicaciones();

                var ubicacion = db.ubicaciones.Where(x => x.ubicaciones1 == ubicacio).FirstOrDefault();

                if (ubicacion != null)
                {
                    //oUbicacionesDAL = new ubicacionesDAL();
                    //oUbicacionesDAL.Agregar(datosUbicacion());
                    //ListarUbicaciones();
                }
                else
                {
                    //ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaPassFail", "window.onload = function(){alert('contraseña es incorrecta1');};", true);

                }

            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this.Page, this.GetType(), "alertaPassFail", "window.onload = function(){alert('Debe ingresar una ubicacion.');};", true);

            }
            

           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("registroUsuario.aspx");
        }

        protected void SeleccionRegistro(object sender, GridViewCommandEventArgs e)
        {
            int FilaSeleccionada = int.Parse(e.CommandArgument.ToString());

            txtID.Value = gvubicaciones.Rows[FilaSeleccionada].Cells[1].Text;
            txtUbicacion.Text = gvubicaciones.Rows[FilaSeleccionada].Cells[2].Text;
            txtLat.Text = gvubicaciones.Rows[FilaSeleccionada].Cells[3].Text;
            txtLong.Text = gvubicaciones.Rows[FilaSeleccionada].Cells[4].Text;

            btnEliminar.Enabled = true;
            btnModificar.Enabled = true;
            btnAgregar.Enabled = false;
        }

        protected void EliminarRegistro(object sender, EventArgs e)
        {
            oUbicacionesDAL = new ubicacionesDAL();
            oUbicacionesDAL.Eliminar(datosUbicacion());
            ListarUbicaciones();
        }

        protected void ModificarRegistro(object sender, EventArgs e)
        {
            oUbicacionesDAL = new ubicacionesDAL();
            oUbicacionesDAL.Modificar(datosUbicacion());
            ListarUbicaciones();
        }

        public void LimpiarCampos() {
            txtID.Value = null;
            txtLat.Text = "";
            txtLong.Text = "";
            txtUbicacion.Text = "";

            btnEliminar.Enabled = false;
            btnModificar.Enabled = true;
        }

        protected void LimpiarPL(object sender, EventArgs e)
        {
            LimpiarCampos();
        }
    }
}