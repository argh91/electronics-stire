<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="AllProduct.aspx.cs" Inherits="AllProduct" %>

<%@ Register Src="~/manage/UserControls/productPager.ascx" TagPrefix="uc1" TagName="productPager" %>
<%@ Register Src="~/manage/UserControls/Vmenu.ascx" TagPrefix="uc1" TagName="Vmenu" %>
<%@ Register Src="~/manage/UserControls/ProductDisplay.ascx" TagPrefix="uc1" TagName="ProductDisplay" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
  
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>   
    <link href="css/vmenu/amazonmenu.css" rel="stylesheet" />
    <link href="css/seedcss/animate.css" rel="stylesheet" />
    <link href="css/seedcss/font-awesome.min.css" rel="stylesheet" />
    <link href="css/seedcss/main.css" rel="stylesheet" />
    <link href="css/seedcss/public.css" rel="stylesheet" />
    <link href="css/seedcss/reset.css" rel="stylesheet" />
    <script type="text/javascript" src="js/seedjs/fbevents.js"></script>
    <script type="text/javascript" src="js/seedjs/analytics.js"></script>
    <script type="text/javascript" src="js/seedjs/host.js"></script>
    <script  type="text/javascript" src="js/vmenu/amazonmenu.js"></script>
     <script type="text/javascript">
        (function (i, s, o, g, r, a, m) {
            i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
                (i[r].q = i[r].q || []).push(arguments)
            }, i[r].l = 1 * new Date(); a = s.createElement(o),
        m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
        })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

        ga('create', 'UA-77925723-1', 'auto');
        ga('send', 'pageview');
        !function (f, b, e, v, n, t, s) {
            if (f.fbq) return; n = f.fbq = function () {
                n.callMethod ?
                        n.callMethod.apply(n, arguments) : n.queue.push(arguments)
            }; if (!f._fbq) f._fbq = n;
            n.push = n; n.loaded = !0; n.version = '2.0'; n.queue = []; t = b.createElement(e); t.async = !0;
            t.src = v; s = b.getElementsByTagName(e)[0]; s.parentNode.insertBefore(t, s)
        }(window,
                document, 'script', '//connect.facebook.net/en_US/fbevents.js');

        fbq('init', '1080959988628815');
        fbq('track', "PageView");
    </script>
     <script type="text/javascript" >

         jQuery(function () {
             amazonmenu.init({
                 menuid: 'mysidebarmenu'
             })
         })

</script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
         <% DataBase db = new DataBase(); Response.Write(db.SelectSetting("websitetitle").ToString());%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Gallery" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">
        <section class="item-list com-width center clear" >
        <div class="item-list__contnet fr" style="direction:ltr;float:left">
            <div class="search-count c-0d f24 f-dp-m hide">
                <span class="js-result-count">30</span>
                <span class="js-result-desc">results</span>found for"
                <span class="js-keyword c-06">Xadow</span>"
            </div>
            <div class="content-box clear" style="margin-bottom:20%;margin-top:-20%;"><%--                <uc1:productPage runat="server" id="productPage" />--%>
                    <uc1:ProductDisplay runat="server" id="ProductDisplay" />
            </div>
            <!-- start pager-->
            <div class="mt20 mb20 fr paging f-os-l f12 clear" style="float:left;direction:rtl">
                <uc1:productPager runat="server" id="productPager" />
             </div>
            <!--end Pager-->
        </div>
        <div style="width:17%;float:right;direction:rtl;  position: fixed;right: 0;top: 25%;width: 8em;margin-top: -2.5em;">
            <uc1:Vmenu runat="server" id="Vmenu" />
        </div>

    </section>

        <script language="javascript" type="text/javascript">
            (function () {

            })();
    </script>
    <script type="text/javascript" src="./Boards for Raspberry pi - Seeed_files/public_module.js"></script>
    <script type="text/javascript"  src="./Boards for Raspberry pi - Seeed_files/base_module.js"></script>
    <script type="text/javascript"  src="./Boards for Raspberry pi - Seeed_files/jquery.lazyload.min.js"></script>
    <script type="text/javascript"  src="./Boards for Raspberry pi - Seeed_files/idangerous.swiper.min.js"></script>
    <script type="text/javascript"  src="./Boards for Raspberry pi - Seeed_files/item_list.js"></script>
    <script type="text/javascript" >
        $(function () {
            itemList();
        });
    </script>

</asp:Content>

