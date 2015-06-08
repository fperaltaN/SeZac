using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using CapaDatos;
namespace Negocio
{
   public class Datos
    {

        ConexionBDArgentum datos;
        public DataSet LlenaDatos()
        {
            datos = new ConexionBDArgentum();
            DataSet obj = new DataSet();

            int mostrar = datos.EjecutaProcedimineto("MostrarHistorial", "HistorialMedico", ref obj);
            return obj;
        }
    }
}
