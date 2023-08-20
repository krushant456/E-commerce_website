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

                if (Request.QueryString.Get("prodid") != null && Request.QueryString.Get("quantity") != null && Request.QueryString.Get("size") != null)
                {
                    SqlDataAdapter myadpt = new SqlDataAdapter("insert into cart values('" + Session.SessionID.ToString() + "'," + Request.QueryString.Get("prodid").ToString() + "," + Request.QueryString.Get("quantity").ToString() + ",'" + Request.QueryString.Get("size").ToString() + "','" + Request.QueryString.Get("color").ToString() + "')", mycon);
                    DataSet ds = new DataSet();
                    myadpt.Fill(ds);
                }
                else
                {
                    if (Request.QueryString.Get("prodid") != null && Request.QueryString.Get("quantity") != null)
                    {
                        SqlDataAdapter myadpt = new SqlDataAdapter("insert into cart values('" + Session.SessionID.ToString() + "'," + Request.QueryString.Get("prodid").ToString() + "," + Request.QueryString.Get("quantity").ToString() + ",null,null)", mycon);
                        DataSet ds = new DataSet();
                        myadpt.Fill(ds);
                    }
                }
                fillGrid();
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
        SqlDataAdapter myadpt2 = new SqlDataAdapter("select cart.product_id,product_name,cart.quantity,size,color from cart,product where cart.product_id=product.product_id and sessionid='"+Session.SessionID.ToString()+"'", mycon);
        DataSet ds1 = new DataSet();
        myadpt2.Fill(ds1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        fillGrid();

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        SqlDataAdapter myadpt2 = new SqlDataAdapter("delete from cart where sessionid='"+Session.SessionID.ToString()+"' and product_id="+GridView1.DataKeys[e.RowIndex].Value.ToString(), mycon);
        DataSet ds1 = new DataSet();
        myadpt2.Fill(ds1);
        fillGrid();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        fillGrid();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        TextBox txtQuantity = (TextBox)GridView1.Rows[e.RowIndex].Cells[1].Controls[0];
        TextBox txtcolor= (TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0];
        TextBox txtsize = (TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0];
        //Label1.Text = txtQuantity.Text;
        //Label1.Text = "update cart set quantity= " + txtQuantity.Text + ",size='" + txtsize.Text + "',color='" + txtcolor.Text + "' where sessionid='" + Session.SessionID.ToString() + "' and product_id=" + GridView1.DataKeys[e.RowIndex].Value.ToString();
        SqlDataAdapter myadpt2 = new SqlDataAdapter("update cart set quantity= " +txtQuantity.Text+",size='"+txtsize.Text+"',color='"+txtcolor.Text+"' where sessionid='"+Session.SessionID.ToString() + "' and product_id=" + GridView1.DataKeys[e.RowIndex].Value.ToString(), mycon);
        DataSet ds1 = new DataSet();
        myadpt2.Fill(ds1);
        GridView1.EditIndex = -1;
        fillGrid();
        
    }

   
}