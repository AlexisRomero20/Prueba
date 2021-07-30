using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ClassEntidades
{
    public class Ubicacion
    {
        public int id_ubicacion { get; set; }
        public string Colonia { get; set; }
        public string Calleynumero { get; set; }
        public string Municipio { get; set; }
        public string Ciudad { get; set; }
        public string Referencia { get; set; }
        public string Caracteristica { get; set; }
        public string CP { get; set; }
        public int F_Cliente { get; set; }
    }
}
