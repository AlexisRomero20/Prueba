using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ClassAccesoSQL;
using ClassEntidades;
using System.Data;
using System.Data.SqlClient;

namespace ClassLogicaNegocios
{
    public class LogUbicacion
    {
        private ClaseConeccion objacceso =
           new ClaseConeccion(@"Data Source=DESKTOP-UJ8LE08; Initial Catalog=PedidosCarniceria; Integrated Security = true;");

        private LogCliente LogicaCliente = new LogCliente();

        public Boolean Insert(Ubicacion ub, Cliente nuevo, ref string mens_salida)
        {
            int idC = LogicaCliente.idd(nuevo, ref mens_salida);

            SqlParameter[] params1 = new SqlParameter[8];
            params1[0] = new SqlParameter
            {
                ParameterName = "Col",
                SqlDbType = SqlDbType.VarChar,
                Size = 120,
                Direction = ParameterDirection.Input,
                Value = ub.Colonia
            };
            params1[1] = new SqlParameter
            {
                ParameterName = "Call",
                SqlDbType = SqlDbType.VarChar,
                Size = 120,
                Direction = ParameterDirection.Input,
                Value = ub.Calleynumero
            };
            params1[2] = new SqlParameter
            {
                ParameterName = "Mun",
                SqlDbType = SqlDbType.VarChar,
                Size = 90,
                Direction = ParameterDirection.Input,
                Value = ub.Municipio
            };
            params1[3] = new SqlParameter
            {
                ParameterName = "Ciu",
                SqlDbType = SqlDbType.VarChar,
                Size = 90,
                Direction = ParameterDirection.Input,
                Value = ub.Ciudad
            };
            params1[4] = new SqlParameter
            {
                ParameterName = "Ref",
                SqlDbType = SqlDbType.VarChar,
                Size = 120,
                Direction = ParameterDirection.Input,
                Value = ub.Referencia
            };
            params1[5] = new SqlParameter
            {
                ParameterName = "Carac",
                SqlDbType = SqlDbType.VarChar,
                Size = 100,
                Direction = ParameterDirection.Input,
                Value = ub.Caracteristica
            };
            params1[6] = new SqlParameter
            {
                ParameterName = "CP",
                SqlDbType = SqlDbType.VarChar,
                Size = 10,
                Direction = ParameterDirection.Input,
                Value = ub.CP
            };
            params1[7] = new SqlParameter
            {
                ParameterName = "F_C",
                SqlDbType = SqlDbType.Int,
                Direction = ParameterDirection.Input,
                Value = idC
            };

            string sentencia = "Insert into Ubicacion values (@Col,@Call,@Mun,@Ciu,@Ref,@Carac,@CP,@F_C);";

            Boolean salida = false;

            salida = objacceso.ModificaBDunPocoMasSegura(sentencia, objacceso.AbrirConexion(ref mens_salida), ref mens_salida, params1);

            return salida;
        }

    }
}
