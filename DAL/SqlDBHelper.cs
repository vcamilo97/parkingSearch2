using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    class SqlDBHelper
    {
        DataTable Tabla;
        SqlConnection strConexion = new SqlConnection("Data Source=DESKTOP-T8L1TM0; Initial Catalog=pagina; Integrated Security=true");
        SqlCommand cmd = new SqlCommand();

        public bool EjecutarComandoSQL(SqlCommand strSQLCommand) {
            bool respuesta = true;
            cmd = strSQLCommand;
            cmd.Connection = strConexion;
            strConexion.Open();
            respuesta = (cmd.ExecuteNonQuery() <= 0) ? false : true;
            return respuesta;
        
        }

        public DataTable EjecutarSentenciaSQL(SqlCommand strSQLCommand)
        {
            cmd = strSQLCommand;
            cmd.Connection = strConexion;
            strConexion.Open();
            Tabla = new DataTable();
            Tabla.Load(cmd.ExecuteReader());
            strConexion.Close();
            return Tabla;

        }




    }
}
