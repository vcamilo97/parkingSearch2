using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using BLL;
namespace DAL
{
    public class ubicacionesDAL
    {
        SqlDBHelper oConexion;
        public ubicacionesDAL() {          
             oConexion = new SqlDBHelper();


        }
        public bool Agregar(ubicacionesBLL OubicacionesBLL) {
            SqlCommand cmdCommando = new SqlCommand();
            cmdCommando.CommandText = "INSERT INTO ubicaciones (ubicaciones, latitud, longitud, nombreLocal, estado, idCliente) VALUES(@ubicaciones, @latitud, @longitud, @nombreLocal, 1, @idCliente)";
            cmdCommando.Parameters.Add("@ubicaciones", SqlDbType.VarChar).Value = OubicacionesBLL.Ubicacion;
            cmdCommando.Parameters.Add("@latitud", SqlDbType.VarChar).Value = OubicacionesBLL.Latitud;
            cmdCommando.Parameters.Add("@longitud", SqlDbType.VarChar).Value = OubicacionesBLL.Longitud;
            cmdCommando.Parameters.Add("@nombreLocal", SqlDbType.VarChar).Value = OubicacionesBLL.nombreLocal;
            //cmdCommando.Parameters.Add("@estado", SqlDbType.Bit).Value = OubicacionesBLL.nombreLocal;
            cmdCommando.Parameters.Add("@idCliente", SqlDbType.VarChar).Value = OubicacionesBLL.idCliente;



            return oConexion.EjecutarComandoSQL(cmdCommando);
        }

        public bool Eliminar(ubicacionesBLL OubicacionesBLL) {
            SqlCommand cmdComando = new SqlCommand();
            cmdComando.CommandText = "DELETE FROM ubicaciones WHERE ID=@ID";
            cmdComando.Parameters.Add("@ID",SqlDbType.Int).Value=OubicacionesBLL.ID;

            return oConexion.EjecutarComandoSQL(cmdComando);
        }

        public bool Modificar(ubicacionesBLL OubicacionesBLL) {
            SqlCommand cmdComando = new SqlCommand();
            cmdComando.CommandText = "UPDATE ubicaciones SET ubicaciones=@ubicaciones,latitud=@latitud,longitud=@longitud, nombreLocal=@nombreLocal WHERE ID=@ID";
            cmdComando.Parameters.Add("@ubicaciones", SqlDbType.VarChar).Value = OubicacionesBLL.Ubicacion;
            cmdComando.Parameters.Add("@latitud", SqlDbType.VarChar).Value = OubicacionesBLL.Latitud;
            cmdComando.Parameters.Add("@longitud", SqlDbType.VarChar).Value = OubicacionesBLL.Longitud;
            cmdComando.Parameters.Add("@nombreLocal", SqlDbType.VarChar).Value = OubicacionesBLL.nombreLocal;
            cmdComando.Parameters.Add("@ID", SqlDbType.Int).Value = OubicacionesBLL.ID;

            return oConexion.EjecutarComandoSQL(cmdComando);
        }

        public DataTable Listar() {
            SqlCommand cmdComando = new SqlCommand();
            cmdComando.CommandText = "SELECT * FROM ubicaciones";
            cmdComando.CommandType = CommandType.Text;

            DataTable TablaResultante = oConexion.EjecutarSentenciaSQL(cmdComando);
            return TablaResultante;
        
        }
    }
}
