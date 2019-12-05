using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Security.Cryptography;
using System.Text;
using Prueba5.models;



namespace Prueba5
{
    public partial class registroUsuario : System.Web.UI.Page
    {
        DataClasses1DataContext db = new DataClasses1DataContext();
        public string confirmar;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //static string Encrypt(string value)
        //{
        //    //using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider())
        //    //{
        //    //    UTF8Encoding utf8 = new UTF8Encoding();
        //    //    byte[] data = md5.ComputeHash(utf8.GetBytes(value));
        //    //    return Convert.ToBase64String(data);
        //    //}
        //}

        protected void btnRegistro_Click(object sender, EventArgs e)
        {

            usuario nuevo = new usuario();
            nuevo.nombreCompleto = txtNom.Text;
            nuevo.nombreUsuario = txtUser1.Text;
            nuevo.password1 = txtPass.Text;

            //if (nuevo.nombreUsuario != "" && nuevo.nombreCompleto != "" && nuevo.password1 != "") {
            //    var usuario = db.usuario.Where(x => x.nombreUsuario == nuevo.nombreUsuario).FirstOrDefault();

            //    if (usuario != null)
            //    {
            //        if (usuario.password1 == nuevo.password1)
            //        {
            //            string usu = usuario.nombreUsuario + " " + usuario.nombreUsuario;
            //            FormsAuthentication.SetAuthCookie(nuevo.nombreUsuario, true);
            //            Response.Redirect("inicio.aspx");
            //        }
            //        else {
            //            ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "AlertaLoginContrasena", "windows.onload = function(){ alert('La contraseña no es correcta'); };", true);


            //        }


            //    }
            //    else {
            //        ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "AlertaLoginUsuario", "windows.onload = function(){ alert('El usuario no existe'); };", true);

            //    }
            //}
            //else {
            //    ScriptManager.RegisterStartupScript(this.Page, this.GetType(), "AlertaLoginFail", "windows.onload = function(){ alert('usuario o contraseña deben estar llenos'); };", true);
            //}



            confirmar = txtPass1.Text;
            if (nuevo.password1 == confirmar)
            {
                db.usuario.InsertOnSubmit(nuevo);
                db.SubmitChanges();
                Response.Redirect("inicioSesion.aspx");

            }
            else
            {
                lbl1.Text = "Las contraseñas no coinciden";
                txtPass1.Text = "";
            }


            //if (string.IsNullOrEmpty(txtPass1.Text))
            //{
            //}
            //Label1.Text = Encrypt(txtPass1.Text);

        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("inicioSesion.aspx");
        }

        //static string Encrypt(string value) {
        //    using (MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider()) {
        //        UTF8Encoding utf8 = new UTF8Encoding();
        //        byte[] data = md5.ComputeHash(utf8.GetBytes(value));
        //        return Convert.ToBase64String(data);
        //    }
        //}
    }
}