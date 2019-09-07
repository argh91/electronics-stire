using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class newpass : System.Web.UI.Page
{
    DataBase db = new DataBase();
    SqlConnection cn = new SqlConnection(DataBase.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["directory"] != null)
        {

        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }

    protected void butNewPass_Click(object sender, EventArgs e)
    {

             bool result=db.NoneQueryCommand("sp_preuser_newPassword",
                new SqlParameter("@oldPass", Request["directory"].ToString()),
                    new SqlParameter("@newPassword", db.Hashing(txtPassword.Text)));

             lblPassChange.Text = "كلمه عبور با موفقيت تغيير كرد.";

            lblPassChange.Text = "عمليات نا موفق بود.";

    }
}