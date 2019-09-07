<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="newpass.aspx.cs" Inherits="newpass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
    <link href="/css/seedcss/main.css" rel="stylesheet" />
    <link href="/css/seedcss/public.css" rel="stylesheet" />
    <link href="/css/seedcss/reset.css" rel="stylesheet" />
    <link href="/css/seedcss/animate.css" rel="stylesheet" />
    <link href="/css/seedcss/font-awesome.min.css" rel="stylesheet" />
    <link href="/css/seedcss/front.css" rel="stylesheet" />
    <link href="/css/seedcss/idangerous.swiper.css" rel="stylesheet" />
    <script type="text/javascript" src="/js/seedjs/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="/js/seedjs/public_module.js"></script>
    <script type="text/javascript" src="/js/seedjs/ec.js"></script>
    <script type="text/javascript" src="/js/seedjs/analytics.js"></script>
    <script type="text/javascript" src="/js/seedjs/fbevents.js"></script>

    <script>
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

        // 添加产品ga代码开始
        ga('create', 'UA-77925723-1', 'auto');
        ga('require', 'ec');
        ga('send', 'pageview');
        // 添加产品ga代码结束

        // FACEBOOK 代码
        !function(f,b,e,v,n,t,s){if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};if(!f._fbq)f._fbq=n;
        n.push=n;n.loaded=!0;n.version='2.0';n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];s.parentNode.insertBefore(t,s)}(window,
        document,'script','//connect.facebook.net/en_US/fbevents.js');

        fbq('init', '1080959988628815');
        fbq('track', "PageView");


    </script>
    <script type="text/javascript">
            $(function () {
                UserStatusExecution.findPassword();
                /*$.cookie('name','vaan')
                console.log('获取的cookie是：'+$.cookie('user-login'));*/
            })
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Gallery" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">
  <section class="center user-wrap f12 user-operation" style="direction:rtl;font-family:Verdana" >
              <div >
            <h1 class="f-dp-m f20">تغيير كلمه عبور</h1>
            <div class="com-group-input rel mt30">
                <div class="label"> كلمه عبور جديد</div>
                <asp:TextBox ID="txtPassword" runat="server" placeholder="كلمه عبور جديد را وارد كنيد" CssClass="input f14"></asp:TextBox>
                <div class="warning tr hide abs">لطفا كلمه عبور خود را وارد كنيد</div>
            </div>
            <div class="com-group-input rel mt30">
                <div class="label">تائيد كلمه عبور</div>
                <asp:TextBox ID="txtConfPassword" placeholder="مجددا كلمه عبور جديد را وارد كنيد" runat="server" CssClass="input f14"></asp:TextBox>
                <div class="warning tr hide abs"></div>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfPassword" ErrorMessage="رمز عبور متفاوت ميباشد." ForeColor="Red"></asp:CompareValidator>
                <asp:Label ID="lblPassChange" runat="server"></asp:Label>
            </div>
              <asp:Button ID="butNewPass" runat="server" Text="تغيير كلمه عبور" CssClass="btn btn-confirm js-reset-psw mt30" Width="100%" OnClick="butNewPass_Click" ></asp:Button>
              </div>

  </section>

</asp:Content>

