using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class _Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["Conn"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty((string)Session["email"]))
            Response.Redirect("./login.aspx", false);
        else
        {
            if (Session["role"].ToString() != "Admin")
                Response.Redirect("./login.aspx", false);


        }
        list();
    }

    protected void list()
    {
        try
        {

            if (con.State == System.Data.ConnectionState.Closed)
                con.Open();

            string sql = "select * from admin where status = @status";

            SqlCommand cmd = new SqlCommand(sql, con);
            cmd.Parameters.AddWithValue("@status", 0);
            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                GvYear.DataSource = dt;
                GvYear.DataBind();

            }
            else
            {
                Label1.Text = "No Record Found";
                Label1.CssClass = "alert alert-danger";
            }

        }
        catch (Exception ex)
        {
            Label1.Text = "Somthing went wrong";
            Label1.CssClass = "alert alert-danger";
        }
        finally
        {
            con.Close();
        }
    }

}