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
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
          
                int length = FileUpload1.PostedFile.ContentLength;
                byte[] pic = new byte[length];
                FileUpload1.PostedFile.InputStream.Read(pic, 0, length);
               SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\DELL\\source\\repos\\Shop\\Shop\\App_Data\\shop.mdf;Integrated Security=True;");
                con.Open();
                   
                    SqlCommand com = new SqlCommand("insert into product (Pname,Pdesc,Pimage,Pprice) VALUES (@name, @desc,@photo,@price)", con);
                    com.Parameters.AddWithValue("@name", TextBox2.Text);
                    com.Parameters.AddWithValue("@desc", TextBox3.Text);
                    com.Parameters.AddWithValue("@photo", pic);
                    com.Parameters.AddWithValue("@price", TextBox5.Text);
                    com.ExecuteNonQuery();
                    Label1.Visible = true;
                    Label1.Text = "Image Uploaded Sucessfully";  //after Sucessfully uploaded image
                    Response.Redirect("main.aspx");

                con.Close();
              
                /* FileUpload1.SaveAs(HttpContext.Current.Request.PhysicalApplicationPath+"Images/"+FileUpload1.FileName);
                 path = FileUpload1.FileName;


                 con.Open();
                 SqlCommand cmd = new SqlCommand("insert into productadd" + "(prid,prname,prdesc,primage,prprice) values (@prid,@prname,@prdesc,@primage,@prprice)", con);
                 cmd.Parameters.AddWithValue("@prid", TextBox1.Text);
                 cmd.Parameters.AddWithValue("@prname", TextBox2.Text);
                 cmd.Parameters.AddWithValue("@prdesc", TextBox3.Text);
                 cmd.Parameters.AddWithValue("@primage",FileUpload1);
                 cmd.Parameters.AddWithValue("@prprice", TextBox5.Text);
                 cmd.ExecuteNonQuery();
                 con.Close();
                */
                
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("CRUD.aspx");
        }
    }
}