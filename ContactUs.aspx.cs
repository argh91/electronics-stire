using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.IO;
public partial class ContactUs : System.Web.UI.Page
{
    DataBase db = new DataBase();
    protected void Page_Load(object sender, EventArgs e)
    {
        ckBody.Toolbar = "Basic";
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        StreamReader sr = new StreamReader("~/MailContactTheme.htm");
        string body=sr.ReadToEnd();
        body = body.Replace("@SenderName", txtName.Text).Replace("@Mail", txtEmail.Text).Replace("@Tell", txtTell.Text).Replace("@Subject", txtSubject.Text).Replace("@Msg", ckBody.Text);
        db.SendEmail(txtEmail.Text, "info@amjadbazar.ir", txtSubject.Text, body);
    }
}