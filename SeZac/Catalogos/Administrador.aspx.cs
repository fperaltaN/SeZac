using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace Sistema.Catalogos
{
    public partial class Administrador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Nadministrados obj = new Nadministrados();

                ASPxGridView1.DataSource = obj.LlenaDatosAdmin();
                ASPxGridView1.DataBind();
            }

        }

        protected void BtnAgregar_Click(object sender, EventArgs e)
        {
            Boolean informacion= false;

            Nadministrados obj = new Nadministrados();
            informacion = obj.InsertaAdmin(2,TxtUsuario.Text, TxtPassword.Text, 1, true,DateTime.Now,DateTime.Now);

            ASPxGridView1.DataSource = obj.LlenaDatosAdmin();
            ASPxGridView1.DataBind();
        }
    }
}