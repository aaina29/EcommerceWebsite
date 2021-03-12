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
    public partial class registration : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
          
        }
        protected void btnregistration_Click(object sender, EventArgs e)
        {
            lblmsg.Text = "";
            SqlConnection SQLConn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
            SqlDataAdapter SQLAdapter = new SqlDataAdapter("insert into reg values('" + txtfname.Text + "','" + txtlname.Text + "','" + username.Text + "','" + email.Text + "','" + phoneno.Text + "', '"+address.Text+"', '"+age.Text+"', '"+gender.SelectedValue+"', '"+password.Text+"', '"+confirmPass+"')", SQLConn);
            DataTable DT = new DataTable(); 
            SQLAdapter.Fill(DT);


            SqlDataAdapter SQLAAdapter = new SqlDataAdapter("select * from reg", SQLConn);
            DataTable DTT = new DataTable();
            SQLAAdapter.Fill(DTT);

            
            lblmsg.Text = "Registration Done!!";
            txtfname.Text = "";
            txtlname.Text = "";
            username.Text = "";
            email.Text = "";
            phoneno.Text = "";
            address.Text = "";
            age.Text = "";
            gender.SelectedValue = "";
            password.Text = "";
            confirmPass.Text = "";
            txtfname.Focus();
            

        }


    }
}