using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty((string)Session["email"]))
            Response.Redirect("./login.aspx", false);
        else
        {
            if (Session["role"].ToString() != "Admin")
                Response.Redirect("./login.aspx", false);


        }

    }
}