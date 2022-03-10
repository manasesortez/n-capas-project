using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data.SqlClient;
using capaNegocio;

namespace capaPresentacion
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        N_Estudiantes objN_est = new N_Estudiantes();
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            try
            {
                objN_est.insertarEstudiante(
                    Nombre_Estudiante.Text,
                    Convert.ToInt32(Edad_Estudiante.Text),
                    Carnet_Estudiante.Text,
                    Identidad_Estudiante.Text,
                    Carrera_Estudiante.Text,
                    Direccion_Estudiante.Text
                );


                Response.Redirect("RegistroEstudiantes.aspx");


            }
            catch (Exception ex) {


                throw;
              }

        }
    }
}