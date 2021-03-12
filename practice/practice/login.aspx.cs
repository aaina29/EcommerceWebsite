using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Drawing.Configuration;

namespace practice
{
    public partial class login : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter SQLAdapter = new SqlDataAdapter();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                Response.Redirect("userHome.aspx");
            }
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True";
            con.Open();
        }

      
        protected void btnlogin_Click(object sender, EventArgs e)
        {
            string user = username.Text.Trim();


            cmd.CommandText = "select * from reg where userName=  '" + username.Text + "' and password= '" + password.Text + "' ";
            cmd.Connection = con;
            SQLAdapter.SelectCommand = cmd;
            SQLAdapter.Fill(DT);
            if (DT.Rows.Count == 1)
            {
                Session["user"] = user;
                Response.Redirect("userHome.aspx");
            }
            else
            {
                lblmsg.Text = "LOGIN UNSUCCESSFUL";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        }

       
    }
}