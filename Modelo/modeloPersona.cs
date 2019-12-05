using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Modelo
{
    public class modeloPersona
    {
        public virtual int Idpersona { get; set; }
        public virtual int Tipopersona  { get; set; }
        public virtual string Nombrepersona { get; set; }
        public virtual string Apellidopersona { get; set; }
        public virtual string Usuario { get; set; }
        public virtual string Contrasenna { get; set; }
        public virtual string Salt { get; set; }
        public virtual int Edad { get; set; }
        public virtual int Estado { get; set; }


        private SqlConnection con;
        private SqlCommand comando;
        private SqlParameter parameter;
        private SqlDataAdapter adaptador;

        private string StringConexion = ConfigurationManager.ConnectionStrings["paginaConnectionString"].ConnectionString;

        public int SP_crearMensajero() {
            int respuesta = 0;

            using (con = new SqlConnection(StringConexion)) {

                con.Open();

                comando = new SqlCommand("SP_crearMensajero", con);
                comando.CommandType = CommandType.StoredProcedure;

                parameter = new SqlParameter("@nombrePersona", SqlDbType.VarChar, 50);
                parameter.Value = this.Nombrepersona;
                comando.Parameters.Add(parameter);

                parameter = new SqlParameter("@apellidoPersona", SqlDbType.VarChar, 50);
                parameter.Value = this.Apellidopersona;
                comando.Parameters.Add(parameter);

                parameter = new SqlParameter("@usuario", SqlDbType.VarChar, 20);
                parameter.Value = this.Usuario;
                comando.Parameters.Add(parameter);

                parameter = new SqlParameter("@contrasenna", SqlDbType.VarChar, 100);
                parameter.Value = this.Contrasenna;
                comando.Parameters.Add(parameter);

                parameter = new SqlParameter("@salt", SqlDbType.VarChar, 100);
                parameter.Value = this.Salt;
                comando.Parameters.Add(parameter);

                parameter = new SqlParameter("@edad", SqlDbType.TinyInt, 50);
                parameter.Value = this.Edad;
                comando.Parameters.Add(parameter);

                try
                {
                    respuesta = comando.ExecuteNonQuery();

                }
                catch (Exception ex) {
                    respuesta = 0;
                }

            }
                return respuesta;

        }

        public int SP_crearCliente()
        {
            int respuesta = 0;


            return respuesta;
        }


    }
}
