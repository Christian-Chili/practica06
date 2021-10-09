using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace MantenimientoBD
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        String connectionString = "Data Source=DESKTOP-6M023GV\\SQLEXPRESS;" + "Initial Catalog = VENTAS; Integrated Security=SSPI";
        protected void Page_Load(object sender, EventArgs e)
        {
            
           
        }

        protected void btngrabar_Click(object sender, EventArgs e)
        {
            if (!this.IsValid) return;
            string insertSQL = "INSERT INTO clientes VALUES(" +
                txtcodigo.Text + ", '" + txtnombres.Text + "','" +
                txtdireccion.Text + "','" + txttelefono.Text + "','" +
                txtemail.Text + "'," + txtedad.Text + ")";
            SqlConnection con = new SqlConnection(connectionString);
            SqlCommand cmd = new SqlCommand(insertSQL, con);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                lblresul.Text = "Cliente registrado con exito";
                con.Close();
                txtcodigo.Text = "";
                txtnombres.Text = "";
                txtdireccion.Text = "";
                txttelefono.Text = "";
                txtemail.Text = "";
                txtedad.Text = "";
            }
            catch(Exception err)
            {
                lblresul.Text = "Error al registrar al cliente";
                lblresul.Text += err.Message;
            }
        }
    }
}