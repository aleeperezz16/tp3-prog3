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

        protected void cvLocalidad_ServerValidate1(object source, ServerValidateEventArgs args)
        {
            args.IsValid = true;
            foreach (ListItem item in ddlLocalidades.Items)
            {
                if (TbLocalidad.Text.Trim().ToUpper().Equals(item.Text.Trim().ToUpper()))
                {
                    args.IsValid = false;
                    break;
                }

            }
        }
        
    }
}
