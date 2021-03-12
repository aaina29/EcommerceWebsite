using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace practice
{
    public partial class addProd : System.Web.UI.Page
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
                DropDownList3.Enabled = false;
                DropDownList4.Enabled = false;
                BindGender();
            }
        }

        private void BindBrand()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from brands", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "name";
                DropDownList1.DataValueField = "brandId";

                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("-Select-", "0"));


            }
        }

        private void BindMainCategory()
        {
           
    
            SqlCommand cmd = new SqlCommand("select * from category", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                DropDownList2.DataSource = dt;
                DropDownList2.DataTextField = "catName";
                DropDownList2.DataValueField = "categoryId";

                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("-Select-", "0"));


            }
        }

        private void BindGender()
        {
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

        protected void btnadd_Click(object sender, EventArgs e)
        {
             using(SqlConnection con= new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True"))
             {
                 SqlCommand cmd = new SqlCommand("sp_insertProd ", con);
                 cmd.CommandType = CommandType.StoredProcedure;
                 cmd.Parameters.AddWithValue("@productName", prodname.Text);
                 cmd.Parameters.AddWithValue("@productPrice", price.Text);
                 cmd.Parameters.AddWithValue("@prodSellPrice", sellingprice.Text);
                 cmd.Parameters.AddWithValue("@prodBrandId", DropDownList1.SelectedItem.Value);
                 cmd.Parameters.AddWithValue("@prodCatId", DropDownList2.SelectedItem.Value);
                 cmd.Parameters.AddWithValue("@prodSubCatId", DropDownList3.SelectedItem.Value);
                 cmd.Parameters.AddWithValue("@prodGenderId", DropDownList4.SelectedItem.Value);
                 cmd.Parameters.AddWithValue("@prodDesc", description.Text);
                 cmd.Parameters.AddWithValue("@prodDetail", proddetails.Text);
                 cmd.Parameters.AddWithValue("@prodMaterial", TextBox1.Text);
                 if (CheckBox1.Checked == true)
                 {
                     cmd.Parameters.AddWithValue("@freeDelivery", 1.ToString());
                 }
                 else
                 {
                     cmd.Parameters.AddWithValue("@freeDelivery", 0.ToString());
                 }

                 if (CheckBox2.Checked == true)
                 {
                     cmd.Parameters.AddWithValue("@30dayReturn", 1.ToString());
                 }
                 else
                 {
                     cmd.Parameters.AddWithValue("@30dayReturn", 0.ToString());
                 }

                 if (CheckBox3.Checked == true)
                 {
                     cmd.Parameters.AddWithValue("@cashOnDelivery", 1.ToString());
                 }
                 else
                 {
                     cmd.Parameters.AddWithValue("@cashOnDelivery", 0.ToString());
                 }
                 con.Open();
                 Int64 productId = Convert.ToInt64(cmd.ExecuteScalar());

                //product size quantity
                for (int i = 0; i < CheckBoxList1.Items.Count; i++)
                {
                    if(CheckBoxList1.Items[i].Selected == true)
                    {
                        Int64 sizeId = Convert.ToInt64(CheckBoxList1.Items[i].Value);
                        int quant = Convert.ToInt32(quantity.Text);

                        SqlCommand cmd2 = new SqlCommand("insert into prodSizeQuantity values('" + productId + "', '" + sizeId + "', '" + quant + "')", con);
                        cmd2.ExecuteNonQuery();
                    }
                   
                }

                //file insert and upload
                //1st upload
                if (FileUpload1.HasFile)
                {
                    string savePath = Server.MapPath("~/images/prodImages/") + productId;
                    if (!Directory.Exists(savePath))
                    {
                        Directory.CreateDirectory(savePath);
                    }
                    string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
                    FileUpload1.SaveAs(savePath + "\\" + prodname.Text.ToString().Trim() + "01" + extension);

                    SqlCommand cmd3 = new SqlCommand("insert into images values('" + productId + "', '" + prodname.Text.ToString().Trim() +"01" + "', '" + extension + "')", con);
                    cmd3.ExecuteNonQuery();
                }

                //2nd upload
                if (FileUpload2.HasFile)
                {
                    string savePath = Server.MapPath("~/images/prodImages/") + productId;
                    if (!Directory.Exists(savePath))
                    {
                        Directory.CreateDirectory(savePath);
                    }
                    string extension = Path.GetExtension(FileUpload2.PostedFile.FileName);
                    FileUpload2.SaveAs(savePath + "\\" + prodname.Text.ToString().Trim() + "02" + extension);

                    SqlCommand cmd4 = new SqlCommand("insert into images values('" + productId + "', '" + prodname.Text.ToString().Trim() + "02" + "', '" + extension + "')", con);
                    cmd4.ExecuteNonQuery();
                }

                //3 rd upload
                if (FileUpload3.HasFile)
                {
                    string savePath = Server.MapPath("~/images/prodImages/") + productId;
                    if (!Directory.Exists(savePath))
                    {
                        Directory.CreateDirectory(savePath);
                    }
                    string extension = Path.GetExtension(FileUpload3.PostedFile.FileName);
                    FileUpload3.SaveAs(savePath + "\\" + prodname.Text.ToString().Trim() + "03" + extension);

                    SqlCommand cmd5 = new SqlCommand("insert into images values('" + productId + "', '" + prodname.Text.ToString().Trim() + "03" + "', '" + extension + "')", con);
                    cmd5.ExecuteNonQuery();
                }

                //4th upload
                if (FileUpload4.HasFile)
                {
                    string savePath = Server.MapPath("~/images/prodImages/") + productId;
                    if (!Directory.Exists(savePath))
                    {
                        Directory.CreateDirectory(savePath);
                    }
                    string extension = Path.GetExtension(FileUpload4.PostedFile.FileName);
                    FileUpload4.SaveAs(savePath + "\\" + prodname.Text.ToString().Trim() + "04" + extension);

                    SqlCommand cmd6 = new SqlCommand("insert into images values('" + productId + "', '" + prodname.Text.ToString().Trim() + "04" + "', '" + extension + "')", con);
                    cmd6.ExecuteNonQuery();
                }

                //5th upload
                if (FileUpload5.HasFile)
                {
                    string savePath = Server.MapPath("~/images/prodImages/") + productId;
                    if (!Directory.Exists(savePath))
                    {
                        Directory.CreateDirectory(savePath);
                    }
                    string extension = Path.GetExtension(FileUpload5.PostedFile.FileName);
                    FileUpload5.SaveAs(savePath + "\\" + prodname.Text.ToString().Trim() + "05" + extension);

                    SqlCommand cmd7 = new SqlCommand("insert into images values('" + productId + "', '" + prodname.Text.ToString().Trim() + "05" + "', '" + extension + "')", con);
                    cmd7.ExecuteNonQuery();
                }

            }
            prodname.Text = "";
            price.Text = " ";
            sellingprice.Text = "";
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            DropDownList3.SelectedIndex = 0;
            DropDownList4.SelectedIndex = 0;
            description.Text = "";
            proddetails.Text = "";
            TextBox1.Text = "";
            quantity.Text = "";
            CheckBox1.Checked = false;
            CheckBox2.Checked = false;
            CheckBox3.Checked = false;

            /*
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into product values(@productName, @productPrice, @prodSellPrice, @prodBrandId, @prodCatId, @prodSubCatId, @prodGenderId, @prodDesc, @prodDetail, @prodMaterial, @freeDelivery, @30dayReturn, @cashOnDelivery)";
            cmd.Parameters.AddWithValue("@productName", prodname.Text);
            cmd.Parameters.AddWithValue("@productPrice", price.Text);
            cmd.Parameters.AddWithValue("@prodSellPrice", sellingprice.Text);
            cmd.Parameters.AddWithValue("@prodBrandId", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@prodCatId", DropDownList2.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@prodSubCatId", DropDownList3.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@prodGenderId", DropDownList4.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@prodDesc", description.Text);
            cmd.Parameters.AddWithValue("@prodDetail", proddetails.Text);
            cmd.Parameters.AddWithValue("@prodMaterial", TextBox1.Text);
            if (CheckBox1.Checked == true)
            {
                cmd.Parameters.AddWithValue("@freeDelivery", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@freeDelivery", 0.ToString());
            }

            if (CheckBox2.Checked == true)
            {
                cmd.Parameters.AddWithValue("@30dayReturn", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@30dayReturn", 0.ToString());
            }

            if (CheckBox3.Checked == true)
            {
                cmd.Parameters.AddWithValue("@cashOnDelivery", 1.ToString());
            }
            else
            {
                cmd.Parameters.AddWithValue("@cashOnDelivery", 0.ToString());
            }
            cmd.ExecuteNonQuery();
            con.Close();
            */

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            DropDownList3.Enabled = true;

            int MainCategoryId = Convert.ToInt32(DropDownList2.SelectedItem.Value);

           
            SqlCommand cmd = new SqlCommand("select * from subCategory where mainCatId ='" + DropDownList2.SelectedItem.Value + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                DropDownList3.DataSource = dt;
                DropDownList3.DataTextField = "subCatName";
                DropDownList3.DataValueField = "subCatId";

                DropDownList3.DataBind();
                DropDownList3.Items.Insert(0, new ListItem("-Select-", "0"));


            }

        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select * from size where brandId ='" + DropDownList1.SelectedItem.Value + "'and categId = '"+ DropDownList2.SelectedItem.Value + "' and subCategId ='"+ DropDownList3.SelectedItem.Value + "' and genderId ='" + DropDownList4.SelectedItem.Value + "' ", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if (dt.Rows.Count != 0)
            {
                CheckBoxList1.DataSource = dt;
                CheckBoxList1.DataTextField = "sizeName";
                CheckBoxList1.DataValueField = "sizeId";

                CheckBoxList1.DataBind();
            }

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
          if(DropDownList3.SelectedIndex != 0)
            {
                DropDownList4.Enabled = true;
            }
            else
            {
                DropDownList4.Enabled = false;
            }
        }
    }
}