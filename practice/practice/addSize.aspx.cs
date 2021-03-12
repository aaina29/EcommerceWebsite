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
    public partial class addSize : System.Web.UI.Page
    {

        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
        SqlDataAdapter SQLAdapter = new SqlDataAdapter();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindBrand();
                BindMainCategory();
                BindGender();

                BindSizeRepeater();
            }

        }

        private void BindSizeRepeater()
        {

            SqlCommand cmd = new SqlCommand("select A.*,B.*,C.*,D.*,E.* from size A inner join category B on B.categoryId = A.categId inner join brands C on C.brandId = A.brandId inner join subCategory D on D.subCatId = A.subCategId inner join gender E on E.genderId = A.genderId", con);
            SqlDataAdapter SQLAdapter = new SqlDataAdapter(cmd);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);
            Repeater1.DataSource = DT;
            Repeater1.DataBind();
        }

        private void BindMainCategory()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from category", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                DropDownList3.DataSource = dt;
                DropDownList3.DataTextField = "catName";
                DropDownList3.DataValueField = "categoryId";

                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("-Select-", "0"));


            }
        }

        private void BindBrand()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from brands", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                DropDownList2.DataSource = dt;
                DropDownList2.DataTextField = "name";
                DropDownList2.DataValueField = "brandId";

                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("-Select-", "0"));


            }
        }

        private void BindGender()
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from gender with(nolock)", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                DropDownList4.DataSource = dt;
                DropDownList4.DataTextField = "genderName";
                DropDownList4.DataValueField = "genderId";

                DropDownList4.DataBind();
                DropDownList4.Items.Insert(0, new ListItem("-Select-", "0"));


            }
        }

        protected void btnAddSize_Click(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True";
            con.Open();
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into size values('" + size.Text + "','"+ DropDownList2.SelectedItem.Value+"','"+ DropDownList3.SelectedItem.Value+"','"+ DropDownList1.SelectedItem.Value+"','"+ DropDownList4.SelectedItem.Value+"')", con);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);


            lblmsg.Text = "Size added successfuly!!";
            lblmsg.ForeColor = System.Drawing.Color.Green;

            BindSizeRepeater();

            size.Text = "";
            size.Focus();

            DropDownList2.ClearSelection();
            DropDownList2.Items.FindByValue("0").Selected = true;

            DropDownList3.ClearSelection();
            DropDownList3.Items.FindByValue("0").Selected = true;

            DropDownList1.ClearSelection();
            DropDownList1.Items.FindByValue("0").Selected = true;

            DropDownList4.ClearSelection();
            DropDownList4.Items.FindByValue("0").Selected = true;
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            int MainCategoryId = Convert.ToInt32(DropDownList3.SelectedItem.Value);

            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from subCategory where mainCatId ='"+ DropDownList3.SelectedItem.Value + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "subCatName";
                DropDownList1.DataValueField = "subCatId";

                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("-Select-", "0"));


            }

        }
    }
}