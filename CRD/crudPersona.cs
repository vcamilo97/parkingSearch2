using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace CRD
{
    class crudPersona
    {
        sqlDB oConeccion;

        public crudPersona() {
            oConeccion = new sqlDB();
        }

        public bool modificar() {
            SqlCommand cmdComando = new SqlCommand();
            cmdComando.CommandText = "UPDATE Persona SET nombrePersona=@nombrePersona, apellidoPersona@apellidoPersona WHERE idPersona=@idPersona";
            cmdComando.Parameters.Add("@nombrePersona", SqlDbType.VarChar).Value = o



        }

    }
}
