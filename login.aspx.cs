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
     
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlDataAdapter myadpt = new SqlDataAdapter("select * from [user] where user_name='"+username.Value.ToString()+"' and password='"+password.Value.ToString()+"'", mycon);
        DataSet ds = new DataSet();
        myadpt.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["username"] = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Session["userid"]= ds.Tables[0].Rows[0].ItemArray[0].ToString();
            Response.Redirect("index.aspx");

        }
        else
        {
            username.Value = "";
            password.Value = "";
            Label1.Text = "Wrong Username or Password, Try Again!!!";
        }
    }
}