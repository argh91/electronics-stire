<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="addCart.aspx.cs" Inherits="addCart" %>

<%@ Register Src="~/manage/UserControls/AddCart.ascx" TagPrefix="uc1" TagName="AddCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
  <meta name="Keywords" content="<% DataBase db = new DataBase();Response.Write(db.SelectSetting("websitekeyword").ToString());%>" />       
        <meta name="Description" content="<% Response.Write(db.SelectSetting("websitedesc").ToString());%>" />    

    <script type="text/jscript">
        $(document).ready(function () {
            $('#plus').click(function () {
                var i = document.getElementById("input").value;
                i = i + 1;
                $('#input').attr('value', i);
            });
        });
    </script>
    <link href="css/seedcss/animate.css" rel="stylesheet" />
    <link href="css/seedcss/font-awesome.min.css" rel="stylesheet" />
    <link href="css/seedcss/front.css" rel="stylesheet" />
    <link href="css/seedcss/idangerous.swiper.css" rel="stylesheet" />
    <link href="css/seedcss/main.css" rel="stylesheet" />
    <link href="css/seedcss/public.css" rel="stylesheet" />
    <link href="css/seedcss/reset.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
     <% DataBase db = new DataBase(); Response.Write(db.SelectSetting("websitetitle").ToString());%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Gallery" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">
    <uc1:AddCart runat="server" ID="AddCart" />
</asp:Content>

