using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Globalization;
public partial class PostComment : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        CkBody.Toolbar = "Basic";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataBase db = new DataBase();
        PersianCalendar ps=new PersianCalendar();
        string Shamsi= ps.GetDayOfMonth(DateTime.Now) + "/" + ps.GetMonth(DateTime.Now) + "/"+ ps.GetYear(DateTime.Now);
        bool flag=db.NoneQueryCommand("tbl_post_comment_insert",
            new SqlParameter("@pid", Request["postid"]),
            new SqlParameter("@postdate", Shamsi),
            new SqlParameter("@email", txtEmail.Text),
            new SqlParameter("@author", txtName.Text),
            new SqlParameter("@body", CkBody.Text));
        if (flag)
        {
            lbl.Text = "عمليات با موفقيت انجام شد.";
        }
        else if (!flag)
        {
            lbl.Text = "عمليات نا موفق بود.";
        }
        txtEmail.Text = "";
        txtName.Text = "";
        CkBody.Text = "";
    }
}
