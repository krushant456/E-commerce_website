using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class ProductDet : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\B2Bdatabase.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString.Get("orderid")!=null)
        {
            Label2.Text = "Your Final Order Id : " + Request.QueryString.Get("orderid").ToString() + " Generated, Plz. Use it in our Future Correspondence...";
            Session["username"] = "";
            Session.RemoveAll();
            Session.Abandon();
        }
        
          
        
    }





    
}