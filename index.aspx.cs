using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["username"]!=null && Session["username"].ToString().Equals("")==false)
        {
            loginlink.Visible = false;
            registerlink.Visible = false;
            Label1.Visible = true;
            linkuseracc.Visible = true;
            Label1.Text = "Welcome!! " + Session["username"].ToString() + " <a href='logout.aspx'>Logout</a>";
        }
        else
        {
            loginlink.Visible = true;
            registerlink.Visible = true;
            Label1.Visible = false;
        }
        SqlConnection mycon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\B2Bdatabase.mdf;Integrated Security=True");
        SqlDataAdapter myadpt2 = new SqlDataAdapter("select * from category", mycon);
        DataSet ds1 = new DataSet();
        myadpt2.Fill(ds1);
        Repeater1.DataSource = ds1;
        Repeater1.DataBind();

        SqlDataAdapter myadpt3 = new SqlDataAdapter("select product.product_id,product_name,mrp,price,image_path,minbuyquantity,user_name from product,prodimage,[User] where product.product_id=prodimage.product_id and [User].user_id=(select user_id from seller where seller_id=product.seller_id)", mycon);
        DataSet ds2 = new DataSet();
        myadpt3.Fill(ds2);
        DataList1.DataSource = ds2;
        DataList1.DataBind();

        SqlDataAdapter myadpt4 = new SqlDataAdapter("select top 6 product.product_id,product_name,mrp,price,image_path,minbuyquantity,user_name from product,prodimage,[User] where product.product_id=prodimage.product_id and [User].user_id=(select user_id from seller where seller_id=product.seller_id)", mycon);
        DataSet ds3 = new DataSet();
        myadpt4.Fill(ds3);
        DataList2.DataSource = ds3;
        DataList2.DataBind();

        SqlDataAdapter myadpt5 = new SqlDataAdapter("select offer_title,discount FROM offer", mycon);
        DataSet ds4 = new DataSet();
        myadpt5.Fill(ds4);
        Repeater2.DataSource = ds4;
        Repeater2.DataBind();
    }
}