<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Download.aspx.cs" Inherits="Download" %>

<%@ Register Src="~/manage/UserControls/DisplayDMenu.ascx" TagPrefix="uc1" TagName="DisplayDMenu" %>
<%@ Register Src="~/manage/UserControls/DownloadPaging.ascx" TagPrefix="uc1" TagName="DownloadPaging" %>
<%@ Register Src="~/manage/UserControls/DownloadDisplay.ascx" TagPrefix="uc1" TagName="DownloadDisplay" %>




<asp:Content ID="Content1" ContentPlaceHolderID="Head" runat="Server">
     <meta name="Keywords" content="<% DataBase db = new DataBase();Response.Write(db.SelectSetting("websitekeyword").ToString());%>" />       
        <meta name="Description" content="<% Response.Write(db.SelectSetting("websitedesc").ToString());%>" />    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" runat="Server">
    <%
       DataBase db = new DataBase();
       Response.Write(db.SelectSetting("downloadtitle").ToString());
        %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Gallery" runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" runat="Server">
    <div id="content">
        <div id="comment_section">
            <ol class="comments first_level">
                <li>
                    <uc1:DownloadDisplay runat="server" ID="DownloadDisplay" />
                </li>

            </ol>
            <div class="cleaner h20"></div>
        </div>

            <div class="pagging">
                <ul>
                    <uc1:DownloadPaging runat="server" ID="DownloadPaging" />
                </ul>
            </div>
            <div class="cleaner"></div>
        </div>

        <div id="sidebar">
            <h3><a href="Download.aspx?PageNumber=1">
            دسته بندی دانلودها
</a>
            </h3>
            <uc1:DisplayDMenu runat="server" ID="DisplayDMenu" />
            <div class="cleaner h30"></div>
        </div>
        <!-- end of sidebar -->
        <div class="cleaner"></div>
</asp:Content>

