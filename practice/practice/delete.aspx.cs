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
    public partial class delete : System.Web.UI.Page

    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
        SqlDataAdapter SQLAdapter = new SqlDataAdapter();
        DataTable DT = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
        
             con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True";
            con.Open();
           
        }

        protected void btndel_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                string pass = password.Text;
                string pass1 = DT.Rows[0][8].ToString().Trim();
                if(pass== pass1)
                {
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = "delete from reg where userName='" + Session["user"] + "' ";
                    cmd.ExecuteNonQuery();
                    con.Close();
                    lblmsg.Text = "record deleted successfully";
                    lblmsg.ForeColor = System.Drawing.Color.Red;


                }
                else
                {
                    lblmsg.Text = "record not deleted";
                    lblmsg.ForeColor = System.Drawing.Color.Green;
                }


            }
           

        }
    }
}