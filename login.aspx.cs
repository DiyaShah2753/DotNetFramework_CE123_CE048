using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Shop
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\DELL\\source\\repos\\Shop\\Shop\\App_Data\\shop.mdf;Integrated Security=True;");
            SqlDataAdapter sda = new SqlDataAdapter("Select * from shop WHERE Email = '"+ TextBox1.Text+ "'and password = '"+TextBox2.Text+"'",con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(dt.Rows.Count>=1)
            {

                Session["email"] = TextBox1.Text;
                //Label1.Text = Session["email"].ToString();
                Response.Redirect("main.aspx");

            }
            else
            {
                Label1.Text = "Login unsuccessful";
            }
        }
    }
}