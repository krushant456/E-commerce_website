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
        if (!IsPostBack)
        {
            if (Session["username"] == null || Session["username"].ToString().Equals("") == true)
                Response.Redirect("login.aspx");
            else
            {

                loginlink.Visible = false;
                registerlink.Visible = false;
                Label1.Visible = true;
                Label1.Text = "Welcome!! " + Session["username"].ToString() + " <a href='logout.aspx'>Logout</a>";

               
                fillGrid();
                fillGrid1();
            }
        }
            //SqlDataAdapter myadpt3 = new SqlDataAdapter("select top 3 product.product_id,product_name,mrp,price,image_path from product,prodimage where product.product_id=prodimage.product_id", mycon);
            //DataSet ds2 = new DataSet();
            //myadpt3.Fill(ds2);
            //DataList1.DataSource = ds2;
            //DataList1.DataBind();


            //SqlDataAdapter myadpt4 = new SqlDataAdapter("select product.product_id,product_name,description,mrp,price,image_path,feature_title,feature_description,review,rating,size1,size2,size3,size4,color1,color2,color3,color4 from product,prodimage,product_review,prodfeature where product.product_id=prodimage.product_id and product.product_id=product_review.product_id and product.product_id=prodfeature.product_id and product.product_id=" + Request.QueryString.Get("prodid").ToString(), mycon);
            //DataSet ds3 = new DataSet();
            //myadpt4.Fill(ds3);
            //Repeater2.DataSource = ds3;
            //Repeater2.DataBind();
        
    }
    private void fillGrid()
    {
        SqlDataAdapter myadpt2 = new SqlDataAdapter("select order_id,order_date,total_amount from [order] where [order].buyer_id='"+Session["username"].ToString()+"'", mycon);
        DataSet ds1 = new DataSet();
        myadpt2.Fill(ds1);
        if (ds1.Tables[0].Rows.Count == 0)
            Label2.Visible = true;
        else
            Label2.Visible = false;
        GridView1.DataSource = ds1;
        GridView1.DataBind();
    }
    private void fillGrid1()
    {
        SqlDataAdapter myadpt3 = new SqlDataAdapter("select product_id,product_name,price,quantity from product where product.seller_id=(select seller_id from seller where user_id=" + Session["userid"].ToString()+")", mycon);
        DataSet ds2 = new DataSet();
        myadpt3.Fill(ds2);
        if (ds2.Tables[0].Rows.Count == 0)
            Label3.Visible = true;
        else
            Label3.Visible = false;
        GridView2.DataSource = ds2;
        GridView2.DataBind();
    }


    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlDataAdapter myadpt2 = new SqlDataAdapter("delete from cart where sessionid='"+Session.SessionID.ToString()+"' and product_id="+GridView1.DataKeys[e.RowIndex].Value.ToString(), mycon);
        DataSet ds1 = new DataSet();
        myadpt2.Fill(ds1);
        fillGrid();
    }


   
}