using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tp3_prog3
{
    public partial class ejercicio1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGuardarLocalidad_Click(object sender, EventArgs e)
        {
            lblErrorLocalidad.Text = "";
           int cuantos= ddlLocalidades.Items.Count;
            
            if(cuantos == 0)
            {
                ddlLocalidades.Items.Add(TbLocalidad.Text.Trim());
            }

            foreach (ListItem item in ddlLocalidades.Items)
            {
                if (TbLocalidad.Text.Trim().ToUpper().Equals(item.Text.Trim().ToUpper()))
                {
                    lblErrorLocalidad.Text = "Esa localidad ya fue ingresada";
                    break;
                }
                else { ddlLocalidades.Items.Add(TbLocalidad.Text.Trim()); }

            }
          

        }
    }
}