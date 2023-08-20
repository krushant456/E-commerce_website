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
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["username"] != null || Session["username"].ToString().Equals("") != true)
        {
            loginlink.Visible = false;
            registerlink.Visible = false;
            Label1.Visible = true;
            Label1.Text = "Welcome!! " + Session["username"].ToString() + " <a href='logout.aspx'>Logout</a>";
        }
        else
        {
            loginlink.Visible = true;
            registerlink.Visible = true;
            Label1.Visible = false;
        }
        if (!IsPostBack)
        {

            TextBox1.Text = Request.QueryString.Get("prodid").ToString();
            SqlConnection mycon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\B2Bdatabase.mdf;Integrated Security=True");
            SqlDataAdapter myadpt2 = new SqlDataAdapter("select * from category", mycon);
            DataSet ds1 = new DataSet();
            myadpt2.Fill(ds1);
            Repeater1.DataSource = ds1;
            Repeater1.DataBind();

            SqlDataAdapter myadpt3 = new SqlDataAdapter("select top 3 product.product_id,product_name,mrp,price,image_path from product,prodimage where product.product_id=prodimage.product_id", mycon);
            DataSet ds2 = new DataSet();
            myadpt3.Fill(ds2);
            DataList1.DataSource = ds2;
            DataList1.DataBind();


            SqlDataAdapter myadpt4 = new SqlDataAdapter("select product.product_id,product_name,description,mrp,price,image_path,feature_title,feature_description,size1,size2,size3,size4,color1,color2,color3,color4 from product,prodimage,prodfeature where product.product_id=prodimage.product_id and product.product_id=prodfeature.product_id and product.product_id=" + Request.QueryString.Get("prodid").ToString(), mycon);
            DataSet ds3 = new DataSet();
            myadpt4.Fill(ds3);
            Repeater2.DataSource = ds3;
            Repeater2.DataBind();
            txtDescription.Text = ds3.Tables[0].Rows[0].ItemArray[2].ToString();
            txtaddInf.Text= ds3.Tables[0].Rows[0].ItemArray[7].ToString();

            SqlDataAdapter myadpt5 = new SqlDataAdapter("select * from product_review where product_id=" + Request.QueryString.Get("prodid").ToString(), mycon);
            DataSet ds4 = new DataSet();
            myadpt5.Fill(ds4);
            if (ds4.Tables[0].Rows.Count > 0)
            {
                lblNoReview.Visible = false;
                Repeater3.DataSource = ds4;
                Repeater3.DataBind();
            }
            else
            {
                lblNoReview.Visible = true;
                lblNoReview.Text = "There is no Review Yet for this Product";
            }


        }
    }

   

}