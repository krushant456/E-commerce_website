using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class admin_dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SaveButton_Click(object sender, ImageClickEventArgs e)
    {
        SqlConnection mycon = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\B2Bdatabase.mdf;Integrated Security=True");
        SqlDataAdapter myadpt = new SqlDataAdapter("insert into city(cityname,state_id) values('"+cityName.Text+"',"+ddlstate.SelectedItem.Value+")", mycon);
        DataSet ds = new DataSet();
        myadpt.Fill(ds);
        cityName.Text = "";
        ScriptManager.RegisterStartupScript(this, GetType(), "Save", "alert('City Successfully Inserted!!!!');", true);
    }
}