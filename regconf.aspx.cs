using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register_regconf : System.Web.UI.Page
{
    DataBase db = new DataBase();
    SqlConnection cn = new SqlConnection(DataBase.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["r9e8j7"] !=null)
        {
            int count = (int)db.SelectCommand("sp_preuser_active", false, new SqlParameter("@password", Request["r9e8j7"].ToString()));
            if (count>1)
            {
                Response.Redirect("register/register.aspx");
                Response.Write("<script>alert('مجددا ثبت نام فرماييد و رمز عبور خود را تغيير دهيد.')</script>");
            }
            else if (count==0)
            {
                Response.Redirect("default.aspx");
            }
            else if (count==1)
            {
               bool flag= db.NoneQueryCommand("sp_preuser_updateState", new SqlParameter("@password", Request["r9e8j7"]));
               if (flag)
               {
                  Response.Write("<script>alert('حساب شما با موفقيت فعال گرديد.هم اكنون ميتوانيد وارد شويد.')</script>");
               }
               else if(!flag)
               {
                   Response.Redirect("register/register.aspx");
                   Response.Write("<script>alert('مجددا ثبت نام فرماييد و رمز عبور خود را تغيير دهيد.')</script>");
               }
            }
        }
        else
        {
            Response.Redirect("default.aspx");
        }
    }
    protected void login_Click(object sender, EventArgs e)
    {
        #region Login
        object pass = db.SelectCommand("sp_Userlogin", false, new SqlParameter("@email", email.Value));
        bool valid = Convert.ToBoolean(db.SelectCommand("sp_user_verify", false, new SqlParameter("@email", email.Value)));
        if (pass == null || valid == null)
        {
            lblEror.Text = "نام کاربری یا رمز عبور نامعتبر است!!!";
        }
        else if (pass.ToString() != db.Hashing(password.Value))
        {
            lblEror.Text = "نام کاربری یا رمز عبور نامعتبر است!!!";
        }
        else if (valid != true)
        {
            lblEror.Text = "نام کاربری فعالسازی نشده است";
        }
        else
        {
            Session.Add("USERS", email.Value);
            //Session.Timeout = 20;
            Response.Redirect("~/Default.aspx");

        }

        #endregion
    }
}