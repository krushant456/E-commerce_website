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
        if (Session["username"] != null && Session["username"].ToString().Equals("") == false)
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
        SqlConnection mycon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\B2Bdatabase.mdf;Integrated Security=True");
        SqlDataAdapter myadpt2 = new SqlDataAdapter("select * from category", mycon);
        DataSet ds1 = new DataSet();
        myadpt2.Fill(ds1);
        Repeater1.DataSource = ds1;
        Repeater1.DataBind();
        if (Request.QueryString.Get("catid") != null)
        {
            Label3.Text = "Category";
            SqlDataAdapter myadpt3 = new SqlDataAdapter("select product.product_id,product_name,mrp,price,image_path,minbuyquantity from product,prodimage where product.product_id=prodimage.product_id and product.sub_catid in ( select sub_catid from subcategory where category_id=" + Request.QueryString.Get("catid").ToString() + ")", mycon);
            DataSet ds2 = new DataSet();
            myadpt3.Fill(ds2);
            DataList1.Visible = true;
            DataList1.DataSource = ds2;
            DataList1.DataBind();
        }
        else
        {
            if(Request.QueryString.Get("search")!=null)
            {
                SqlDataAdapter myadpt5 = new SqlDataAdapter("select product.product_id,product_name,mrp,price,image_path,minbuyquantity from product,prodimage where product.product_id=prodimage.product_id and product_name='" + Request.QueryString.Get("search").ToString() + "'", mycon);
                DataSet ds4 = new DataSet();
                myadpt5.Fill(ds4);
                if (ds4.Tables[0].Rows.Count > 0)
                {
                    Label3.Text = Request.QueryString.Get("search").ToString();
                    DataList1.Visible = true;
                    DataList1.DataSource = ds4;
                    DataList1.DataBind();
                }
                else
                {
                    SqlDataAdapter myadpt6 = new SqlDataAdapter("select product.product_id,product_name,mrp,price,image_path,minbuyquantity from product,prodimage where product.product_id=prodimage.product_id and product.sub_catid in ( select sub_catid from subcategory where sub_category='" + Request.QueryString.Get("search").ToString() + "')", mycon);
                    DataSet ds5 = new DataSet();
                    myadpt6.Fill(ds5);
                    if (ds5.Tables[0].Rows.Count > 0)
                    {
                        Label3.Text = Request.QueryString.Get("search").ToString();
                        DataList1.Visible = true;
                        DataList1.DataSource = ds5;
                        DataList1.DataBind();
                    }
                    else
                    {
                        SqlDataAdapter myadpt7 = new SqlDataAdapter("select product.product_id,product_name,mrp,price,image_path,minbuyquantity from product,prodimage where product.product_id=prodimage.product_id and product.sub_catid in ( select sub_catid from subcategory where category_id=(select category_id from category where category_name='" + Request.QueryString.Get("search").ToString() + "'))", mycon);
                        DataSet ds6 = new DataSet();
                        myadpt7.Fill(ds6);
                        if (ds6.Tables[0].Rows.Count > 0)
                        {
                            Label3.Text = Request.QueryString.Get("search").ToString();
                            DataList1.Visible = true;
                            DataList1.DataSource = ds6;
                            DataList1.DataBind();
                        }
                        else
                        {
                            DataList1.Visible = false;
                            ScriptManager.RegisterStartupScript(this, GetType(), "Warning!!!", "alert('Ohh! Your Search Criteria not Match!!!!');", true);
                            Label2.Visible = true;
                            Label2.Text = "Please Enter either Product Name or Product Category or Product SubCategory in Search Text..";
                            LinkButton1.Visible = true;
                        }

                    }

                }


            }
        }
        SqlDataAdapter myadpt4 = new SqlDataAdapter("select top 6 product.product_id,product_name,mrp,price,image_path,minbuyquantity from product,prodimage where product.product_id=prodimage.product_id", mycon);
        DataSet ds3 = new DataSet();
        myadpt4.Fill(ds3);
        DataList2.DataSource = ds3;
        DataList2.DataBind();
    }
}