using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace practice
{
    public partial class user : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {

            }
            else
            {
                Response.Redirect("registration.aspx");
            }
        }

        protected void btnlogout_click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Response.Redirect("registration.aspx");
        }
    }
}