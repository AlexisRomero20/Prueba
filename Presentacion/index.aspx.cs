using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ClassEntidades;
using ClassLogicaNegocios;

namespace Presentacion
{
    public partial class index : System.Web.UI.Page
    {
        LogUbicacion objLogU = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                objLogU = new LogUbicacion();
                Session["objlogU"] = objLogU;
            }
            else
            {
                objLogU = (LogUbicacion)Session["objlogU"];
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            string m = "";


            Cliente tempc = new Cliente
            {
                id_Cliente = 0,
                Nombre = txbNombre.Text,
                App = txbApp.Text,
                ApM = txbApM.Text,
                Celular = txbCelular.Text,
                Correo = txbCorreo.Text
            };

            Ubicacion tempu = new Ubicacion
            {
                id_ubicacion = 0,
                Colonia = txbColonia.Text,
                Calleynumero = txbCalle.Text,
                Municipio = txbMunicipio.Text,
                Ciudad = txbCiudad.Text,
                Referencia = txbReferencia.Text,
                Caracteristica = txbCaracteristica.Text,
                CP = txbCP.Text,
                F_Cliente = 0
            };
            Boolean conf = false;
            conf = objLogU.Insert(tempu, tempc, ref m);

            if (conf != false)
            {
                lbRespuesta.Text = "Dado de alta Correctamente";

                txbNombre.Text = "";
                txbApp.Text = "";
                txbApM.Text = "";
                txbCelular.Text = "";
                txbCorreo.Text = "";
                txbColonia.Text = "";
                txbCalle.Text = "";
                txbMunicipio.Text = "";
                txbCiudad.Text = "";
                txbReferencia.Text = "";
                txbCaracteristica.Text = "";
                txbCP.Text = "";
            }
            else
            {
                lbRespuesta.Text = "No se pudo dar de alta correctamente: " + m;
            }

        }

        protected void txbCP_TextChanged(object sender, EventArgs e)
        {

        }
    }
}