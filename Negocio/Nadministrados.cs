using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using CapaDatos;
using System.Data.SqlClient;
namespace Negocio
{
    public class Nadministrados
    {

        ConexionBDArgentum datos;
        public DataSet LlenaDatosAdmin()
        {
            datos = new ConexionBDArgentum();
            DataSet obj = new DataSet();
            int mostrar = datos.EjecutaProcedimineto("obtieneDatosAdmin", "DatosAdmin", ref obj);
            return obj;
        }
        public bool InsertaAdmin(int IdUsuario, String Usuario, String Password, int IdPerfil, Boolean Activo, DateTime FechaRegistro, DateTime FechaMod)
        {
            datos = new ConexionBDArgentum();
            SqlParameter[] Parametros = new SqlParameter[7];
          
            SqlParameter admin = new SqlParameter("@IdUsuario", SqlDbType.Int, 10);
            admin.Value = IdUsuario;
            Parametros[0] = admin;

            admin = new SqlParameter("@Usuario", SqlDbType.VarChar, 50);
            admin.Value = Usuario;
            Parametros[1] = admin;

            admin = new SqlParameter("@Password", SqlDbType.VarChar, 50);
            admin.Value = Password;
            Parametros[2] = admin;

            admin = new SqlParameter("@IdPerfil", SqlDbType.Int, 10);
            admin.Value = IdPerfil;
            Parametros[3] = admin;

            admin = new SqlParameter("@Activo", SqlDbType.Bit, 5);
            admin.Value = Activo;
            Parametros[4] = admin;

            admin = new SqlParameter("@FechaRegistro", SqlDbType.DateTime);
            admin.Value = FechaRegistro;
            Parametros[5] = admin;

            admin = new SqlParameter("@FechaMod", SqlDbType.DateTime);
            admin.Value = FechaMod;
            Parametros[6] = admin;

            return datos.EjecutarProcediminetoParametro("AltaAdmin1", Parametros);


        }

    }
}
