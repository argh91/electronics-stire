using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class login_Default : System.Web.UI.Page
{
    DataBase db = new DataBase();
    SqlConnection cn = new SqlConnection(DataBase.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {
        lblEror.Text = "";
        if (Request["register"]!=null)
        {
            int count = (int)db.SelectCommand("sp_preuser_active", false, new SqlParameter("@password", Request["register"].ToString()));
            if (count!=0)
            {
                bool flag = db.NoneQueryCommand("sp_preuser_updateState", new SqlParameter("@password", Request["register"].ToString()));
                if (flag)
                {
                    h3.Visible = true;
                }
                else if (!flag)
                {
                    Response.Redirect("~/userlogin.aspx");
                }
            }
            
        }
    }
    protected void login_Click(object sender, EventArgs e)
    {
        #region Login
        object pass = db.SelectCommand("sp_Userlogin", false, new SqlParameter("@email", email.Value ));
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
    //    SqlDataReader dr = db.SelectCommand(cn, "sp_preuser_select", new SqlParameter("@email", email.Value));
    //    dr.Read();
    //    if (dr["state"]=="true")
    //    {
    //        if (db.Hashing(password.Value)==dr["password"].ToString())
    //        {
    //            Session.Add("USER", dr["Id"].ToString());
    //            dr.Close();
    //            db.CloseConnection(cn);
    //        }
    //        else
    //        {
    //            //رمز عبور اشتباه است
    //        }
    //    }
    //    else
    //    {
    //            //نام كاربري اشتباه است يا كاربر فعال نيست
    //    }
    }
}