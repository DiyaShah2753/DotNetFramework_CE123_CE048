using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Shop
{
    public partial class main : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random ran = new Random();
            int i = ran.Next(1,5);
            Image1.ImageUrl = "~/Images/" + i.ToString() + ".jpg";
            int j = ran.Next(21,30);

            Image2.ImageUrl = "~/Images/" + j.ToString() + ".jpg";
            int k = ran.Next(30,50);

            Image3.ImageUrl = "~/Images/" + k.ToString() + ".jpg";

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
           
        }


    }
}