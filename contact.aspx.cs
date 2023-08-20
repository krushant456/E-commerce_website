using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class contact : System.Web.UI.Page
{
    SqlConnection mycon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\B2Bdatabase.mdf;Integrated Security=True");

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlDataAdapter myadpt = new SqlDataAdapter("insert into feedback values('" +fname.Value+"','"+subject.Value+"','"+email.Value+"','"+message.Value+"')", mycon);
        DataSet ds = new DataSet();
        myadpt.Fill(ds);
        Response.Redirect("index.aspx");
    }
}