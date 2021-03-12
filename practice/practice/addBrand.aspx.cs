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
    public partial class addBrand : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
        SqlDataAdapter SQLAdapter = new SqlDataAdapter();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBrandRepeater();
            }
        }

        private void BindBrandRepeater()
        {
            

            SqlCommand cmd = new SqlCommand("select * from brands",con);
            SqlDataAdapter SQLAdapter = new SqlDataAdapter(cmd);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);
            Repeater1.DataSource = DT;
            Repeater1.DataBind();
        }
        protected void btnAddBrand_Click(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True";
            con.Open();
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into brands values('" + brand.Text + "')", con);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);


            lblmsg.Text = "Brand added successfuly!!";
            lblmsg.ForeColor = System.Drawing.Color.Green;

            BindBrandRepeater();
            brand.Text = "";
            brand.Focus();
        }
    }
}