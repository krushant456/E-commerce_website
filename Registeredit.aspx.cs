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



            SqlDataAdapter myadpt6 = new SqlDataAdapter("select * from [user] where user_id=" + Session["userid"].ToString(), mycon);
            DataSet ds6 = new DataSet();
            myadpt6.Fill(ds6);
            username.Value = ds6.Tables[0].Rows[0].ItemArray[1].ToString();
            password.Value = ds6.Tables[0].Rows[0].ItemArray[2].ToString();
            email.Value = ds6.Tables[0].Rows[0].ItemArray[3].ToString();
            contactno.Value = ds6.Tables[0].Rows[0].ItemArray[4].ToString();
            uname.Value = ds6.Tables[0].Rows[0].ItemArray[5].ToString();
            address.Value = ds6.Tables[0].Rows[0].ItemArray[6].ToString();
            sans.Value = ds6.Tables[0].Rows[0].ItemArray[11].ToString();
            area.Items.FindByText(ds6.Tables[0].Rows[0].ItemArray[7].ToString()).Selected = true;
            city.Items.FindByText(ds6.Tables[0].Rows[0].ItemArray[8].ToString()).Selected = true;
            state.Items.FindByText(ds6.Tables[0].Rows[0].ItemArray[9].ToString()).Selected = true;

            //secquestion.Items.FindByText(ds6.Tables[0].Rows[0].ItemArray[10].ToString()).Selected = true;

        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlDataAdapter myadpt = new SqlDataAdapter("update [user] set user_name='"+username.Value+"',password='"+password.Value+"',address='"+address.Value+"',areaname='"+ area.Items[area.SelectedIndex].Text + "',city='"+ city.Items[city.SelectedIndex].Text +"',state='"+ state.Items[state.SelectedIndex].Text+"',email_id='"+email.Value+"',contact_no='"+contactno.Value+"',security_question='"+secquestion.Items[secquestion.SelectedIndex].Text+"',security_answer='"+sans.Value+"' where user_id="+Session["userid"].ToString() , mycon);
        DataSet ds = new DataSet();
        myadpt.Fill(ds);
      
        Response.Redirect("index.aspx");
    }
}