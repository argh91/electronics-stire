using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class profile : System.Web.UI.Page
{
    DataBase db = new DataBase();
    SqlConnection cn = new SqlConnection(DataBase.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void butEdit_Click(object sender, EventArgs e)
    {
       if (Session["USERS"] != null)
        {
          int id = (int)db.SelectCommand("sp_selectEmail", false, new SqlParameter("@email", Session["USERS"]));
        bool flag =db.NoneQueryCommand("sp_user_update",new SqlParameter("@id",id),new SqlParameter("@roleid",1),
                                                                          new SqlParameter("@user",txtUser.Text),
                                                                          new SqlParameter("@pass",db.Hashing(txtPass.Text)),
                                                                          new SqlParameter("@valid", db.SelectCommand("sp_verifyById",false,new SqlParameter("@id",id))),
                                                                          new SqlParameter("@email",txtEmail.Text),
                                                                          new SqlParameter("@name",txtName.Text),
                                                                          new SqlParameter("@lastname",txtLastName.Text),
                                                                          new SqlParameter("@educate",ddlEducate.SelectedValue),
                                                                          new SqlParameter("@field",txtField.Text),
                                                                          new SqlParameter("@province",ddlProvince.SelectedValue),
                                                                          new SqlParameter("@city",ddlCity.SelectedValue),
                                                                          new SqlParameter("@company",txtComName.Text),
                                                                          new SqlParameter("@address",txtAddress.Text),
                                                                          new SqlParameter("@phone",txtPhone.Text));
        if (flag)
        {
            lblEditResult.Text = "حساب كاربري با موفقيت بروز رساني شد.";
        }
        else if(!flag)
        {
            lblEditResult.Text = "عمليات ناموفق بود!";
        }
       }
        else
	        {
                 Response.Write("<script>alert('ابتدا وارد شويد!');</script>");
	        }
    }

    protected void butAboutMe_Click(object sender, EventArgs e)
    {
        #region AboutMe
        if (Session["USERS"] != null)
        {
            int id = (int)db.SelectCommand("sp_selectEmail", false, new SqlParameter("@email", Session["USERS"]));
            SqlDataReader dr = db.SelectCommand(cn, "sp_user_select", new SqlParameter("@id", id));
            while (dr.Read())
            {
                ddlEducate.SelectedValue = dr["Educate"].ToString();
                txtField.Text = dr["Field"].ToString();
                ddlProvince.SelectedItem.Text = dr["province"].ToString();
                ddlCity.SelectedValue = dr["city"].ToString();
                txtComName.Text = dr["company"].ToString();
                txtAddress.Text = dr["Address"].ToString();
                txtPhone.Text = dr["Phone"].ToString();

            }
            MultiView1.SetActiveView(aboutMe);
        }
        else
        {
            Response.Write("<script>alert('ابتدا وارد شويد!');</script>");
        }
        #endregion
    }
    protected void butBasicInfo_Click(object sender, EventArgs e)
    {
        #region BasicInfo
        if (Session["USERS"] != null)
        {
            int id = (int)db.SelectCommand("sp_selectEmail", false, new SqlParameter("@email", Session["USERS"]));
            SqlDataReader dr = db.SelectCommand(cn, "sp_user_select", new SqlParameter("@id", id));
            while (dr.Read())
            {
                txtUser.Text = dr["username"].ToString();
                txtPass.Text = dr["password"].ToString();
                txtPass0.Text = dr["password"].ToString();
                txtEmail.Text = dr["email"].ToString();
                txtCellPhone.Text = dr["mobile"].ToString();
                txtName.Text = dr["name"].ToString();
                txtLastName.Text = dr["lasrname"].ToString();

            }
            MultiView1.SetActiveView(basicInfo);
        }
        else
        {
            Response.Write("<script>alert('ابتدا وارد شويد!');</script>");
        }
        #endregion
    }
}