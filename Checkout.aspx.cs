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
                SqlDataAdapter myadpt2 = new SqlDataAdapter("select sum(product.price*cart.quantity) as tprice from cart,product where cart.product_id=product.product_id and sessionid='" + Session.SessionID.ToString() + "'", mycon);
                DataSet ds1 = new DataSet();
                myadpt2.Fill(ds1);
                Label2.Text = ds1.Tables[0].Rows[0].ItemArray[0].ToString();

                SqlDataAdapter myadpt3 = new SqlDataAdapter("select name,address,areaname,city,state from [User] where user_name='" + Session["username"].ToString() + "'", mycon);
                DataSet ds2 = new DataSet();
                myadpt3.Fill(ds2);

                txtAddress.Text = ds2.Tables[0].Rows[0].ItemArray[0].ToString() + ds2.Tables[0].Rows[0].ItemArray[1].ToString() + "," + ds2.Tables[0].Rows[0].ItemArray[2].ToString() + ds2.Tables[0].Rows[0].ItemArray[3].ToString();


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
        SqlDataAdapter myadpt2 = new SqlDataAdapter("select cart.product_id,product_name,cart.quantity,size,color,product.price*cart.quantity as tprice from cart,product where cart.product_id=product.product_id and sessionid='"+Session.SessionID.ToString()+"'", mycon);
        DataSet ds1 = new DataSet();
        myadpt2.Fill(ds1);
        GridView1.DataSource = ds1;
        GridView1.DataBind();
    }
   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if(int.Parse(DropDownList1.SelectedItem.Value)>1)
        {
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            txtBName.Visible = true;
            txtTranDate.Visible = true;
            txtTranNo.Visible = true;
        }
        else
        {
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            txtBName.Visible = false;
            txtTranDate.Visible = false;
            txtTranNo.Visible = false;
        }
    }
    Random r = new Random();
    protected void btnConfirmOrder_Click(object sender, EventArgs e)
    {
        
        int randno = r.Next(1, 200000);
        SqlDataAdapter myadpt3 = new SqlDataAdapter("insert into [order] values("+randno+",'"+DateTime.Now.Date.ToShortDateString()+"','"+txtAddress.Text+"',"+Label2.Text+",'"+Session["username"].ToString()+"')", mycon);
        DataSet ds2 = new DataSet();
        myadpt3.Fill(ds2);
        SqlDataAdapter myadpt1 = new SqlDataAdapter("select * from cart where sessionid='" + Session.SessionID.ToString() + "'", mycon);
        DataSet ds = new DataSet();
        myadpt1.Fill(ds);
        foreach(DataTable dt in ds.Tables)
        {
            foreach(DataRow dr in dt.Rows)
            {
                SqlDataAdapter myadpt4 = new SqlDataAdapter("insert into order_detail values("+dr.ItemArray[1].ToString()+","+ dr.ItemArray[2].ToString()+",'"+ dr.ItemArray[3].ToString()+"','"+ dr.ItemArray[4].ToString()+"',"+randno+")", mycon);
                DataSet ds4 = new DataSet();
                myadpt4.Fill(ds4);
            }
        }
        if (int.Parse(DropDownList1.SelectedItem.Value) == 1)
        {
            SqlDataAdapter myadpt2 = new SqlDataAdapter("insert into payment(order_id,buyer_id,paymentmethod_id) values(" + randno + ",'" + Session["username"].ToString() + "',"+ DropDownList1.SelectedItem.Value.ToString()+")", mycon);
            DataSet ds1 = new DataSet();
            myadpt2.Fill(ds1);
        }
        else
        {
            SqlDataAdapter myadpt5 = new SqlDataAdapter("insert into payment(order_id,buyer_id,paymentdate,bankewalletname,transaction_no,paymentmethod_id) values(" + randno + ",'" + Session["username"].ToString() + "','"+txtTranDate.Text+"','"+txtBName.Text+"',"+txtTranNo.Text +","+ DropDownList1.SelectedItem.Value.ToString() + ")", mycon);
            DataSet ds5 = new DataSet();
            myadpt5.Fill(ds5);
        }
        SqlDataAdapter myadpt6 = new SqlDataAdapter("delete from cart where sessionid='"+Session.SessionID.ToString()+"'", mycon);
        DataSet ds6 = new DataSet();
        myadpt6.Fill(ds6);
        Response.Redirect("genOrder.aspx?orderid=" + randno);

    }
}