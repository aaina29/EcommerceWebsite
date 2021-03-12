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
    public partial class profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["user"] != null)
            {
                Label1.Text = "session was created " + Session["user"].ToString();
                con.Open();
                SqlCommand cmd = new SqlCommand("select firstName, lastName , email, phoneNo, address, age, gender from reg where userName =  '" + Session["user"] + "'", con);
                SqlDataReader dataFinal = cmd.ExecuteReader();
                DataList1.DataSource = dataFinal;
                DataList1.DataBind();
                con.Close();

            }
            else
            {
                Label1.Text = "session was not created ";
            }

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void update_Click(object sender, EventArgs e)
        {
            Response.Redirect("update.aspx");
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            Response.Redirect("delete.aspx");
        }
    }
}