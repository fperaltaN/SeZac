using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using CapaDatos;

namespace Negocio
{
    public class NHistorialMedico
    {
        ConexionBDArgentum informacion;

        public DataSet MuestraHistorial()
        {
            informacion = new ConexionBDArgentum();
            DataSet obj= new DataSet();
            int mostrar = informacion.EjecutaProcedimineto("MostrarHistorial", "DatosHistorial", ref obj);
            return obj;
        }
    }
}
