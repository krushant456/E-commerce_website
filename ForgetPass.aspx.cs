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
        if (password.Value != rpassword.Value)
        {
            Label1.Text = "Password and Retype Password Must Match!!!";
        }
        else
        {
            SqlDataAdapter myadpt = new SqlDataAdapter("update [user] set password='" + password.Value.ToString() + "' where user_name='" + username.Value + "' or email_id='" + username.Value + "'", mycon);
            DataSet ds = new DataSet();
            myadpt.Fill(ds);
            Response.Redirect("index.aspx");
        }
    }

    protected void btnSubmit1_Click(object sender, EventArgs e)
    {
        //Label1.Text = "select * from [user] where user_name='" + username.Value.ToString() + "' and security_question='" + secquestion.Value + "' and security_answer='" + sans.Value.ToString() + "'";
        SqlDataAdapter myadpt = new SqlDataAdapter("select * from [user] where user_name='" + username.Value.ToString() + "' and security_question='"+secquestion.Value +"' and security_answer='"+ sans.Value.ToString() + "'", mycon);
        DataSet ds = new DataSet();
        myadpt.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            Error.Visible = false;
            password.Visible = true;
            rpassword.Visible = true;
            btnSubmit.Visible = true;
        }
        else
        {
            SqlDataAdapter myadpt1 = new SqlDataAdapter("select * from [user] where email_id='" + username.Value.ToString() + "' and security_question='" + secquestion.Value + "' and security_answer='" + sans.Value.ToString() + "'", mycon);
            DataSet ds1 = new DataSet();
            myadpt1.Fill(ds1);
            if (ds1.Tables[0].Rows.Count > 0)
            {
                Error.Visible = false;
                password.Visible = true;
                rpassword.Visible = true;
                btnSubmit.Visible = true;
            }
            else
            {
                Error.Visible = true;
                Error.Text = "Wrong Username or Security Answer, Try Again!!!";
            }
        }
    }
}