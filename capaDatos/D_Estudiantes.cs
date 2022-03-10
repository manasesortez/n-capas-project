using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using capaEntidad;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
namespace capaDatos
{
    public class D_Estudiantes
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlconn"].ConnectionString);

        public DataTable D_Listado()
        {
            SqlCommand cmd = new SqlCommand("sp_listarEstudiantes", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public void insertarEstudiante(string nombre, int edad, string DUI, string carnet, string carrera, string direccion)
        {
            SqlCommand cmd = new SqlCommand("AgregarEstudiante", conn);
            cmd.CommandType =  CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nombre", nombre);
            cmd.Parameters.AddWithValue("@edad", edad);
            cmd.Parameters.AddWithValue("@identidad", DUI);
            cmd.Parameters.AddWithValue("@carnet", carnet);
            cmd.Parameters.AddWithValue("@carrera", carrera);
            cmd.Parameters.AddWithValue("@direccion", direccion);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

        }

        public void EliminarEstudiante(int id) 
        {
            SqlCommand cmd = new SqlCommand("eliminarEstudiante", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();


        }


        public void ActualizarEstudiante(int id, string nombre, int edad, string DUI, string carnet, string carrera, string direccion)
        {
            SqlCommand cmd = new SqlCommand("ActualizarEstudiante", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", id);
            cmd.Parameters.AddWithValue("@nombre", nombre);
            cmd.Parameters.AddWithValue("@edad", edad);
            cmd.Parameters.AddWithValue("@identidad", DUI);
            cmd.Parameters.AddWithValue("@carnet", carnet);
            cmd.Parameters.AddWithValue("@carrera", carrera);
            cmd.Parameters.AddWithValue("@direccion", direccion);
            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();
        }
    }

}
