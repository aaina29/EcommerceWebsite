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
    public partial class addGender : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");

        SqlDataAdapter SQLAdapter = new SqlDataAdapter();
        DataTable DT = new DataTable();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGender();
            }
        }

        private void BindGender()
        {
            
           
            SqlCommand cmd = new SqlCommand("select * from gender", con);
            SqlDataAdapter SQLAdapter = new SqlDataAdapter(cmd);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);
            Repeater1.DataSource = DT;
            Repeater1.DataBind();
        }


        protected void btnAddGender_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into gender values('" + gender.Text + "')", con);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);


            lblmsg.Text = "Gender added successfuly!!";
            lblmsg.ForeColor = System.Drawing.Color.Green;

            BindGender();
            gender.Text = "";
            gender.Focus();
        }
    }
}