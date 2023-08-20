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
        SqlDataAdapter myadpt2 = new SqlDataAdapter("select max(product_id)+1 as maxpid from product", mycon);
        DataSet ds1 = new DataSet();
        myadpt2.Fill(ds1);
        string lastprodid;
        if (ds1.Tables[0].Rows[0].IsNull(0) == false)
        {
            lastprodid = ds1.Tables[0].Rows[0].ItemArray[0].ToString();
        }
        else
            lastprodid = "1";

        Label1.Text = "Product id " + lastprodid;
        SqlDataAdapter myadpt = new SqlDataAdapter("insert into product(product_name,description,mrp,price,discount,quantity,sub_catid,seller_id,minbuyquantity) values('"+ProductName.Text+"','"+PDescription.Text+"',"+txtMRP.Text+","+PPrice.Text+","+pdiscount.Text+","+pquantity.Text+","+ddlSubCategory.SelectedItem.Value+","+ ddlSeller.SelectedItem.Value+","+txtMinBuy.Text+")", mycon);
        DataSet ds = new DataSet();
        myadpt.Fill(ds);
        SqlDataAdapter myadpt1 = new SqlDataAdapter("insert into prodfeature(feature_title,feature_description,product_id,size1,size2,size3,size4,color1,color2,color3,color4) values('" + feaTitle.Text + "','" + feaDesc.Text  + "'," + lastprodid + ",'"+txtSize1.Text+"','"+txtSize2.Text+"','"+txtSize3.Text+"','"+txtSize4.Text+"','"+txtColor1.Text+"','"+txtColor2.Text+"','"+txtColor3.Text+"','"+txtColor4.Text+"')", mycon);
        myadpt1.Fill(ds);
        Label1.Text = Server.MapPath("/")+"admin/images/"+ProdImage.PostedFile.FileName.ToString();
        if (ProdImage.HasFile==true)
        {
            ProdImage.SaveAs(  Server.MapPath("/")+"admin/images/"+ProdImage.PostedFile.FileName.ToString());
        }
        SqlDataAdapter myadpt3 = new SqlDataAdapter("insert into ProdImage(image_path,product_id) values('" + ProdImage.PostedFile.FileName.ToString() + "'," + lastprodid + ")", mycon);
        myadpt3.Fill(ds);
       
        //subCatName.Text = "";
        ScriptManager.RegisterStartupScript(this, GetType(), "Save", "alert('Product Successfully Inserted!!!!');", true);
    }
}