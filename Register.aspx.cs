using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class Register : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\B2Bdatabase.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlDataAdapter myadpt5 = new SqlDataAdapter("select * from category", mycon);
            DataSet ds5 = new DataSet();
            myadpt5.Fill(ds5);
            Repeater1.DataSource = ds5;
            Repeater1.DataBind();

            SqlDataAdapter myadpt1 = new SqlDataAdapter("select * from state", mycon);
            DataSet ds1 = new DataSet();
            myadpt1.Fill(ds1);
            state.DataSource = ds1;
            state.DataTextField = "statename";
            state.DataValueField = "state_id";
            state.DataBind();

            SqlDataAdapter myadpt2 = new SqlDataAdapter("select * from city", mycon);
            DataSet ds2 = new DataSet();
            myadpt2.Fill(ds2);
            city.DataSource = ds2;
            city.DataTextField = "cityname";
            city.DataValueField = "city_id";
            city.DataBind();

            SqlDataAdapter myadpt3 = new SqlDataAdapter("select * from area", mycon);
            DataSet ds3 = new DataSet();
            myadpt3.Fill(ds3);
            area.DataSource = ds3;
            area.DataTextField = "areaname";
            area.DataValueField = "area_id";
            area.DataBind();

            SqlDataAdapter myadpt4 = new SqlDataAdapter("select * from subscription", mycon);
            DataSet ds4 = new DataSet();
            myadpt4.Fill(ds4);
            subtype.DataSource = ds4;
            subtype.DataTextField = "sub_title";
            subtype.DataValueField = "sub_id";
            subtype.DataBind();
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlDataAdapter myadpt = new SqlDataAdapter("insert into [User](user_name,password,email_id,contact_no,name,address,areaname,city,state,security_question,security_answer,role_id) values('" + username.Value + "','" + password.Value + "','" + email.Value + "','" + contactno.Value + "','" + uname.Value + "','" + address.Value + "','" + area.Items[area.SelectedIndex].Text + "','"+city.Items[city.SelectedIndex].Text+"','"+state.Items[state.SelectedIndex].Text+"','"+secquestion.Value+"','"+sans.Value+"',0)", mycon);
        DataSet ds = new DataSet();
        myadpt.Fill(ds);
        myadpt.Dispose();
        SqlDataAdapter myadpt3 = new SqlDataAdapter("select max(user_id) from [User]", mycon);
        DataSet ds1 = new DataSet();
        myadpt3.Fill(ds1);
        String userid;
        userid = ds1.Tables[0].Rows[0].ItemArray[0].ToString();
        if(usertype.Items[usertype.SelectedIndex].Text.Equals("Buyer")==true)
        {
            SqlDataAdapter myadpt1 = new SqlDataAdapter("insert into buyer(area_id,user_id,sub_id) values(" + area.Items[area.SelectedIndex].Value + "," + userid + ","+subtype.SelectedItem.Value.ToString()+")", mycon);
            myadpt1.Fill(ds);
        }
        else
        {
            SqlDataAdapter myadpt2 = new SqlDataAdapter("insert into Seller(area_id,user_id,sub_id) values(" + area.Items[area.SelectedIndex].Value + "," + userid + ","+ subtype.SelectedItem.Value.ToString()+")", mycon);
            myadpt2.Fill(ds);
        }
        if (subtype.SelectedItem.Text.Equals("Free")==false)
        {
            
            SqlDataAdapter myadpt4 = new SqlDataAdapter("insert into subpayment(paymentdate,user_name,bankwalletname,transaction_no,amountpaid,sub_id) values('" + DateTime.Now.ToShortDateString() + "','" + username.Value.ToString() + "','" + bankname.Value.ToString()+"','"+tansno.Value.ToString()+"',"+amount.Value+","+ subtype.SelectedItem.Value.ToString() + ")", mycon);
            myadpt4.Fill(ds);
        }
            Response.Redirect("index.aspx");
    }

    protected void subtype_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter myadpt = new SqlDataAdapter("select * from subscription where sub_id="+subtype.SelectedItem.Value.ToString(), mycon);
        DataSet ds = new DataSet();
        myadpt.Fill(ds);
        subdet.InnerText = "Subscription Charge : " + ds.Tables[0].Rows[0].ItemArray[2].ToString() + " Details : " + ds.Tables[0].Rows[0].ItemArray[3].ToString();
        if(subtype.SelectedItem.Text.Equals("Free"))
        {
            tansno.Visible = false;
            bankname.Visible = false;
            amount.Visible = false;
        }
        else
        {
            tansno.Visible = true;
            bankname.Visible = true;
            amount.Visible = true;
        }
    }
}