using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using capaDatos;
using capaEntidad;
using System.Data;

namespace capaNegocio
{
    public class N_Estudiantes
    {
        D_Estudiantes objDato = new D_Estudiantes();
        public DataTable N_Listado()
        {
            return objDato.D_Listado();
        }

        public void insertarEstudiante(string nombre, int edad, string DUI, string carnet, string carrera, string direccion)
        {
            NewMethod(nombre, edad, DUI, carnet, carrera, direccion);
        }

        private void NewMethod(string nombre, int edad, string DUI, string carnet, string carrera, string direccion)
        {
            objDato.insertarEstudiante(nombre, Convert.ToInt32(edad), DUI, carnet, carrera, direccion);
        }
    }
}
