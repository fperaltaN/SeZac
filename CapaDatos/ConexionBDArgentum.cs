using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CapaDatos
{
   public class ConexionBDArgentum
    {


        public SqlConnection conn;


        public SqlConnection ConexionAbrir()
        {
            string connString = "Data Source=GAP\\SQLEXPRESS;Initial Catalog=Argentum;Integrated Security=True";
            conn = new SqlConnection(connString);
            conn.Open();
            return conn;
        }

        public void ConexionCerrar(SqlConnection conn)
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
                conn.Dispose();
                conn = null;
            }
        }

        public int EjecutaProcedimineto(string NombreStoredProcedure, string TableName, ref DataSet DsConsulta)
        {

            SqlCommand Cmd;
            SqlDataAdapter Da;
            DataSet Ds;
            Ds = DsConsulta;
            Da = new SqlDataAdapter();
            int resultado = 0;
            conn = ConexionAbrir();
            Cmd = conn.CreateCommand();
            Cmd.CommandType = CommandType.StoredProcedure;
            Cmd.CommandText = NombreStoredProcedure;

            try
            {
                Da.SelectCommand = Cmd;
                Ds.Tables.Add(new DataTable(TableName));
                resultado = Da.Fill(Ds, TableName);
            }
            catch (Exception e)
            {
                resultado = 0;
                throw e;
            }
            return resultado;

        }

        public int EjecutarConsultas(string Usuario, string functionName, SqlParameter[] parametros)
        {
            SqlCommand cmd;
            int resultado = 0;
            conn = this.ConexionAbrir();
            conn.BeginTransaction(IsolationLevel.ReadCommitted);
            cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = functionName;
            this.AsignarParametros(cmd, parametros);

            try
            {
                resultado = cmd.ExecuteNonQuery();
                cmd.Transaction.Commit();
                //trans.Commit();
            }
            catch (Exception err)
            {
                cmd.Transaction.Rollback();
                throw err;
                //trans.Rollback();
            }
            //VEL-27/07/2007 Obliga a cerrar conexiones que se abren
            finally
            {
                if (conn.State == ConnectionState.Open)
                    conn.Close();
            }

            return resultado;
        }
        public void AsignarParametros(SqlCommand cmd, SqlParameter[] parametros)
        {
            if (parametros != null)
            {
                //Validar cantidad de parametros des SP
                foreach (SqlParameter parametro in parametros)
                {
                    cmd.Parameters.Add(parametro);
                }
            }
        }

        public Boolean EjecutarProcediminetoParametro(string query, SqlParameter[] Par)
        {
            SqlCommand cmdConsulta = new SqlCommand(query);
            cmdConsulta.CommandType = CommandType.StoredProcedure;
            conn = ConexionAbrir();
            try
            {
                cmdConsulta.Connection = conn;
                if (Par != null)
                {
                    for (int i = 0; i < Par.Length; i++)
                    {
                        cmdConsulta.Parameters.Add(Par[i]);
                    }
                }
              cmdConsulta.ExecuteReader();
              return true;
            }
            catch (Exception )
           {
               return false;
           }
            finally
            {
                ConexionCerrar(conn);
            }
        }
    }
}
