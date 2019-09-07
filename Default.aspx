<%@ Page Title="" EnableEventValidation="true" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="~/manage/UserControls/SliderDisplay.ascx" TagPrefix="uc1" TagName="SliderDisplay" %>
<%@ Register Src="~/manage/UserControls/PostTopDisplay.ascx" TagPrefix="uc1" TagName="PostTopDisplay" %>
<%@ Register Src="~/manage/UserControls/DisplayDMenu.ascx" TagPrefix="uc1" TagName="DisplayDMenu" %>
<%@ Register Src="~/manage/UserControls/ProductMenu.ascx" TagPrefix="uc1" TagName="ProductMenu" %>
<%@ Register Src="~/manage/UserControls/slider.ascx" TagPrefix="uc1" TagName="slider" %>
<%@ Register Src="~/manage/UserControls/resentProduct.ascx" TagPrefix="uc1" TagName="resentProduct" %>
<%@ Register Src="~/manage/UserControls/Vmenu.ascx" TagPrefix="uc1" TagName="Vmenu" %>


<asp:Content ID="Content4" ContentPlaceHolderID="Title" runat="Server">
   <%
       DataBase db = new DataBase();
       Response.Write(db.SelectSetting("websitetitle").ToString());
        %>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="Server">
     <meta name="Keywords" content="<% DataBase db = new DataBase();Response.Write(db.SelectSetting("websitekeyword").ToString());%>" />       
     <meta name="Description" content="<% Response.Write(db.SelectSetting("websitedesc").ToString());%>" />    
    <link href="css/vmenu/amazonmenu.css" rel="stylesheet" />
    <script type="text/javascript" src="amazonsidebarmenu-master/amazonmenu.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script type="text/javascript" >

        jQuery(function () {
            amazonmenu.init({
                menuid: 'mysidebarmenu'
            })
        })

</script>
    <link href="css/ProductShow.css" rel="stylesheet" />
    <link href="css/reset.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Gallery" runat="Server">
     
    <div style="width:100%;" >
        <div style="float:right;width:88%">
            <div style="float:left;width:79%;">
                 <uc1:slider runat="server" ID="slider" />
		        <script type="text/javascript">
		    $(function () {

		        var jmpressOpts = {
		            animation: { transitionDuration: '0.8s' }
		        };

		        $('#jms-slideshow').jmslideshow($.extend(true, { jmpressOpts: jmpressOpts }, {
		            autoplay: true,
		            bgColorSpeed: '0.8s',
		            arrows: false
		        }));

		    });
		</script>
            </div>
            <div style="float:right;width:20%;padding-top:2%;">
                <uc1:Vmenu runat="server" ID="Vmenu" />
            </div>
        </div>
        <div style="float:left;width:11%;height:500px"></div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="Server">
    <div style="margin:0 auto;width:100%;">
                    <uc1:resentProduct runat="server" ID="resentProduct" />
      </div>
    <div class="cleaner"></div>
</asp:Content>

