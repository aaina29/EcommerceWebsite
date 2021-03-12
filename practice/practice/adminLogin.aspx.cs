using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace practice
{
    public partial class adminLogin : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter SQLAdapter = new SqlDataAdapter();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminUser"] != null)
            {
                Response.Redirect("adminHome.aspx");
            }
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True";
            con.Open();
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            
            string user = adminid.Text.Trim();


            cmd.CommandText = "select * from regAdmin where adminId=  '" + adminid.Text + "' and password= '" + password.Text + "' ";
            cmd.Connection = con;
            SQLAdapter.SelectCommand = cmd;
            SQLAdapter.Fill(DT);
            if (DT.Rows.Count == 1)
            {
                Session["adminUser"] = user;
                Response.Redirect("adminHome.aspx");
            }
            else
            {
                lblmsg.Text = "LOGIN UNSUCCESSFUL";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}