using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection mycon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\B2Bdatabase.mdf;Integrated Security=True");
        string user = username.Text;
        string pass = password.Text;
        SqlDataAdapter myadpt = new SqlDataAdapter("select * from [User] where user_name='" + user + "' and password='" + pass + "'", mycon);
        DataSet ds = new DataSet();
        myadpt.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Session["username"] = user;
            Response.Redirect("dashboard.aspx");
        }
        else
            ScriptManager.RegisterStartupScript(this, GetType(), "alertMessage", "alert('Wrong Username or Password, Try Again!!!!');", true);
    }
}