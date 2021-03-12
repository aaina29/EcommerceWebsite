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
    public partial class update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnupdation_Click(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                con.Open();
                SqlCommand cmd = con.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "update reg set firstName='" + txtfname.Text + "', lastName = '" + txtlname.Text + "', email='" + email.Text + "',phoneNo='" + phoneno.Text + "',address='" + address.Text + "',age='" + age.Text + "', gender='" + gender.SelectedValue + "' where userName='" + Session["user"] + "' ";
                cmd.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "record update successfully";
                lblmsg.ForeColor = System.Drawing.Color.Green;
            }
            else
            {
                lblmsg.Text = "record not update";
                lblmsg.ForeColor = System.Drawing.Color.Red;
            }
        
        }
    }
}