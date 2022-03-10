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
    }
}
