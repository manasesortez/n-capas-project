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
    }

}
