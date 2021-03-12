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
    public partial class prodView : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\aditya\source\repos\practice\practice\App_Data\Database1.mdf;Integrated Security=True");
        SqlDataAdapter SQLAdapter = new SqlDataAdapter();
        DataTable DT = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindProdImage();
            }
        }

        private void BindProdImage()
        {
            Int64 Pid = Convert.ToInt64(Request.QueryString["prodId"]);
            SqlCommand cmd = new SqlCommand("select * from images where prodId='"+Pid+"'", con);
            cmd.CommandType = CommandType.Text;

            SqlDataAdapter SQLAdapter = new SqlDataAdapter(cmd);
            DataTable DT = new DataTable();
            SQLAdapter.Fill(DT);
            Repeater1.DataSource = DT;
            Repeater1.DataBind();
        }
    }
}