<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Post.aspx.cs" Inherits="Post" %>

<%@ Register Src="~/manage/UserControls/PostDisplay.ascx" TagPrefix="uc1" TagName="PostDisplay" %>
<%@ Register Src="~/manage/UserControls/PostTopDisplay.ascx" TagPrefix="uc1" TagName="PostTopDisplay" %>
<%@ Register Src="~/manage/UserControls/PostPaging.ascx" TagPrefix="uc1" TagName="PostPaging" %>
<%@ Register Src="~/manage/UserControls/DisplayMenu.ascx" TagPrefix="uc1" TagName="DisplayMenu" %>





<asp:Content ID="Content4" ContentPlaceHolderID="Title" runat="Server">
    <%
       DataBase db = new DataBase();
       Response.Write(db.SelectSetting("posttitle").ToString());
        %>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="Server">
     <meta name="Keywords" content="<% DataBase db = new DataBase();Response.Write(db.SelectSetting("websitekeyword").ToString());%>" />       
        <meta name="Description" content="<% Response.Write(db.SelectSetting("websitedesc").ToString());%>" />    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Gallery" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="Server">
    <div id="content" dir="rtl" style="float:right;width:70%;margin-right:2%;">
        <uc1:PostDisplay runat="server" ID="PostDisplay" />
        <div class="pagging" dir="rtl">
            <ul>
                <uc1:PostPaging runat="server" ID="PostPaging" />
            </ul>
        </div>
        <div class="cleaner"></div>
    </div>
    <div id="sidebar" dir="rtl" style="float:left;margin:auto">
        <h3>دسته بندی مطالب</h3>
        <uc1:DisplayMenu runat="server" ID="DisplayMenu" />

        <div class="cleaner h30"></div>
        <div dir="rtl">
           <h3>آخرین مطالب</h3>
        <ul class="recent_post">
            <uc1:PostTopDisplay runat="server" ID="PostTopDisplay" />
        </ul>
        </div>

    </div>
    <!-- end of sidebar -->

    <div class="cleaner"></div>
</asp:Content>

