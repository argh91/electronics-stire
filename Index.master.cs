using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Index : System.Web.UI.MasterPage
{
    DataBase db = new DataBase();
    SqlConnection cn = new SqlConnection(DataBase.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    //protected void CancelSession()
    //{
    //    Session.Abandon();
    //    Response.Redirect("~/Default.aspx");
    //}
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Abandon();
    }
    protected void ImageAddCart_Click(object sender, ImageClickEventArgs e)
    {
         int id = (int)db.SelectCommand("sp_selectEmail", false, new SqlParameter("@email", Session["USERS"]));   
        Response.Redirect("AddCart.aspx?id="+id+"");
    }
    protected void ImageCart_Click(object sender, ImageClickEventArgs e)
    {
      int id = (int)db.SelectCommand("sp_selectEmail", false, new SqlParameter("@email", Session["USERS"]));   
        Response.Redirect("AddCart.aspx?id=" +id+ "");
    }
    protected void butNews_Click(object sender, EventArgs e)
    {
       bool flag= db.NoneQueryCommand("tbl_Newsletters_insert", new SqlParameter("@email", txtNews.Text));
       if (flag)
       {
           Response.Write("<script>alert('ايميل شما با موفقيت ثبت گرديد.');</script>");
       }
        else if (!flag)
       {
           Response.Write("<script>alert('مجددا تلاش فرماييد!');</script>");
       }
       txtNews.Text = "";
    }
}
