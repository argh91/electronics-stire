<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>مجموعه اموزشی دات نت- ورود به سیستم</title>
   
    <link rel="Stylesheet" type="text/css" href="css/StyleLogin.css" />
</head>
<body style="background-image: url(images/page_bg.jpg); background-repeat: repeat;">
    <form id="form1" runat="server">
    <center>
        <div>
           <p class="title" style="margin-top:10%;margin-right:30%">
               <asp:ScriptManager ID="ScriptManager1" runat="server">
               </asp:ScriptManager>
               ورود به سیستم</p>
            <div id="login-box" class="register-popup" >
                <div id="img_user" style="background-image: url('images/users.png'); top: 10px; position: relative;
                    background-repeat: no-repeat">
                </div>
                <fieldset class="textbox" style="margin-bottom:-10px">
                    <div id="right">
                        <label class="username">
                            <span>نام کاربری</span><br />
                            <br />
                            <asp:TextBox ID="TxtUser" runat="server"></asp:TextBox>
                        </label>
                        <br />
                        <div class="password">
                            <span>رمز عبور</span>
                            <br />
                            <br />
                            <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
                        </div>
                        <br />
                        <br />
                    </div>
                    <div id="left" >
                        <div class="password"> 
                          <span ></span>
                            <br />
                            <br />
                            <asp:Image ID="ImgCaptcha" runat="server" ForeColor="White" 
                                ImageAlign="Middle" />
                         </div>
                           <div class="password">
                            <span>تصویر امنیتی را وارد نمایید</span>
                            <br />
                            <br />
                            <asp:TextBox ID="TxtImg" runat="server"></asp:TextBox>
                        </div>
                    </div>
                </fieldset>
                <asp:Button ID="BtnLogin" runat="server" Text="ورود به سیستم" OnClick="BtnLogin_Click" />
                <br />
                <asp:Label ID="LblStatus" runat="server" ForeColor="Red"></asp:Label>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <p>
                    <asp:LinkButton ID="LinkForget" runat="server" OnClick="LinkForget_Click">رمز عبور خود را فراموش کرده اید؟</asp:LinkButton>
                </p>
                <p>
                    <asp:Label ID="lbl" runat="server" Text="لطفا ایمیل خود را وارد نمایید" Visible="false"></asp:Label><br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtEmail" runat="server" Visible="false"></asp:TextBox><br />
                    <asp:LinkButton ID="LinkRecoveryPass" runat="server" Visible="false" OnClick="LinkRecoveryPass_Click">بازنشاندن گدرواژه</asp:LinkButton>
                </p>
                    
                    </ContentTemplate>
                </asp:UpdatePanel>
                 <p>
                    <asp:LinkButton ID="LinkHomePage" runat="server" onclick="LinkHomePage_Click" >.:بازگشت به صفحه اصلی:.</asp:LinkButton>
                </p>
            </div>
        </div>
    </center>
    </form>
</body>
</html>
