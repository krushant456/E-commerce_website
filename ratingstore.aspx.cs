using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
public partial class ratingstore : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection mycon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\B2Bdatabase.mdf;Integrated Security=True");
        SqlDataAdapter myadpt2 = new SqlDataAdapter("insert into product_review(username,review,rating,product_id) values ('"+Request.QueryString.Get("username").ToString()+"','"+Request.QueryString.Get("message").ToString()+"',"+Request.QueryString.Get("rating").ToString()+","+Request.QueryString.Get("prodid").ToString()+")", mycon);
        DataSet ds1 = new DataSet();
        myadpt2.Fill(ds1);
        ScriptManager.RegisterStartupScript(this, GetType(), "Save", "alert('Rating successfully Saved!!!');", true);
        Response.Redirect("ProductDet.aspx?prodid=" + Request.QueryString.Get("prodid").ToString());

    }
}