using System;
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

        protected void btnEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                objN_est.EliminarEstudiante(
                    txtElimID.Text
                );


                Response.Redirect("RegistroEstudiantes.aspx");


            }
            catch (Exception ex)
            {


                throw;
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            try
            {
                objN_est.ActualizarEstudiante(
                    Convert.ToInt32(txtElimID.Text),
                    Nombre_Estudiante.Text,
                    Convert.ToInt32(Edad_Estudiante.Text),
                    Carnet_Estudiante.Text,
                    Identidad_Estudiante.Text,
                    Carrera_Estudiante.Text,
                    Direccion_Estudiante.Text
                );


                Response.Redirect("RegistroEstudiantes.aspx");


            }
            catch (Exception ex)
            {


                throw;
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected GridView GetGridView1()
        {
            return GridView1;
        }



        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            
        }

        protected void rowUpdatingEvents(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow fila = GridView1.Rows[e.RowIndex];

            var codigo = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Values[0]);

            var nombre_Estudiante = Convert.ToString(GridView1.DataKeys[e.RowIndex].Values[1]);
            var edad_Estudiante = Convert.ToInt32 (GridView1.DataKeys[e.RowIndex].Values[2]);
            var identidad_Estudiante = Convert.ToString( GridView1.DataKeys[e.RowIndex].Values[3]);
            var carnet_Estudiante = GridView1.DataKeys[e.RowIndex].Values[4].ToString();
            var carrera_Estudiante = GridView1.DataKeys[e.RowIndex].Values[5].ToString();
            var direccion_Estudiantes = GridView1.DataKeys[e.RowIndex].Values[6].ToString();

            try
            {
                objN_est.ActualizarEstudiante(
                    codigo,
                    nombre_Estudiante,
                    edad_Estudiante,
                    identidad_Estudiante,
                    carnet_Estudiante,
                    carrera_Estudiante,
                    direccion_Estudiantes
                );

                GridView1.EditIndex = -1;
                Response.Redirect("RegistroEstudiantes.aspx");



            }
            catch (Exception ex)
            {


                throw;
            }
        }
    }
}