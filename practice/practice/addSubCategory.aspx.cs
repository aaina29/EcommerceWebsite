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
    public partial class addSubCategory : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
        SqlDataAdapter SQLAdapter = new SqlDataAdapter();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindMainCat();
                BindSubCat();
            }
        }

        private void BindSubCat()
        {
         
            SqlCommand cmd = new SqlCommand("select A.*,B.* from subCategory A inner join category B on B.categoryId = A.mainCatId",con) ;
            SqlDataAdapter SQLAdapter = new SqlDataAdapter(cmd);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);
            Repeater1.DataSource = DT;
            Repeater1.DataBind();
        }

        private void BindMainCat()
        {
           
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from category", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "catName";
                DropDownList1.DataValueField = "categoryId";

                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("-Select-", "0"));
             

            }
        }

        protected void btnAddSubCat_Click(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True";
            con.Open();

            SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into subCategory values('" + subcategory.Text + "' , '"+ DropDownList1.SelectedItem.Value +"')", con);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);


            lblmsg.Text = "sub category added successfuly!!";
            lblmsg.ForeColor = System.Drawing.Color.Green;

            BindSubCat();
            subcategory.Text = "";

            DropDownList1.ClearSelection();
            DropDownList1.Items.FindByValue("0").Selected = true;
           
        }
    }
    
    
}