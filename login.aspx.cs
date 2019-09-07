using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    DataBase db = new DataBase();
    SqlConnection cn = new SqlConnection(DataBase.ConStr);
    protected void Page_Load(object sender, EventArgs e)
    {

        if(Request["userid"]!=null)
        {
            db.NoneQueryCommand("sp_user_verification", new SqlParameter("@id", Request["userid"]));
            Response.Write("<script>alert('" + "با تشکر - حساب کاربری شما فعال گردید. هم اکنون می توانید وارد وب سایت شوید" + "') </script>");
        }

        #region Captcha
        //random code for captch img
        #region RandomCode
        string ABC = "qwertyuiopasdfghjklzxcvbnm1234567890";
        Random rand = new Random();
        object ABC1 = rand.Next(1, 36);
        object ABC2 = rand.Next(1, 36);
        object ABC3 = rand.Next(1, 36);
        object ABC4 = rand.Next(1, 36);
        object ABC5 = rand.Next(1, 36);
        object ABC6 = rand.Next(1, 36);

        string strABC1 = ABC.Substring(Convert.ToInt32(ABC1), 1);
        string strABC2 = ABC.Substring(Convert.ToInt32(ABC2), 1);
        string strABC3 = ABC.Substring(Convert.ToInt32(ABC3), 1);
        string strABC4 = ABC.Substring(Convert.ToInt32(ABC4), 1);
        string strABC5 = ABC.Substring(Convert.ToInt32(ABC5), 1);
        string strABC6 = ABC.Substring(Convert.ToInt32(ABC6), 1);
        string result = strABC1 + strABC2 + strABC3 + strABC4 + strABC5 + strABC6;
        #endregion
        // view code to img
        if (!IsPostBack)
        {
            Session.Add("Result", result);
            Bitmap secImage = new Bitmap(Server.MapPath("~/images/BgCaptcha.png"));
            Graphics graphImage = Graphics.FromImage(secImage);

            graphImage.DrawString(result.ToString(), new Font("Arial", 24, FontStyle.Italic, GraphicsUnit.Point), SystemBrushes.MenuBar, new PointF());
            secImage.Save(Server.MapPath("~/images/Captcha.png"));
            ImgCaptcha.ImageUrl = "~/Images/Captcha.png";
        }
        #endregion
    }
    protected void BtnLogin_Click(object sender, EventArgs e)
    {
        if (TxtImg.Text == Session["Result"].ToString())
        {
            #region Login
            object pass = db.SelectCommand("sp_login_amdin", false, new SqlParameter("@username", TxtUser.Text));
            if (pass == null)
                LblStatus.Text = "نام کاربری یا رمز عبور نامعتبر است!!!";
            else if (pass.ToString() != db.Hashing(TxtPass.Text))
                LblStatus.Text = "نام کاربری یا رمز عبور نامعتبر است!!!";
            else
            {
                Session.Add("ADMIN", TxtUser.Text);
                Response.Redirect("~/manage/");
            }

            #endregion
        }
        else
            LblStatus.Text = "کدامنیتی اشتباه است!!!";
    }
    protected void LinkForget_Click(object sender, EventArgs e)
    {
        lbl.Visible = true;
        txtEmail.Visible = true;
        LinkRecoveryPass.Visible = true;
    }
    protected void LinkRecoveryPass_Click(object sender, EventArgs e)
    {
        #region EmailUserPassword
        string pass=(string) db.SelectCommand("sp_password_display", false, new SqlParameter("@email", txtEmail.Text));
        if (pass == "" || pass==null)
            lbl.Text = "ایمیل وارد شده معتبر نیست";
        else
        {
            #region SendPassword
            //string body = "کاربر گرامی آقای/خانم:" + TxtUser.Text;
            //body += "درخواست رمز عبور شما با موفقیت در سیستم ثبت شد- لطفا نسبت به نگهداری آن اقدام فرمایید- رمز عبور فعلی شما:" + pass;
            //body += "<br/>با تشکر - مدیریت وب سایت";
            //db.SendEmail("info@janati.ir", txtEmail.Text, "درخواست رمز عبور", body);
            //Response.Write("<script>alert('کاربر گرامی- رمز عبور به ایمیل شما ارسال گردید')</script>");
            #endregion
        }
        #endregion
    }
    protected void LinkHomePage_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/default.aspx");
    }
}