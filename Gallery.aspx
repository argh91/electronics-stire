<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>

<%@ Register Src="~/manage/UserControls/GalleryDisplay.ascx" TagPrefix="uc1" TagName="GalleryDisplay" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
     <meta name="Keywords" content="<% DataBase db = new DataBase();Response.Write(db.SelectSetting("websitekeyword").ToString());%>" />       
     <meta name="Description" content="<% Response.Write(db.SelectSetting("websitedesc").ToString());%>" />    
 <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />

<script type="text/javascript" src="js/jquery-1-4-2.min.js"></script> 
<!--script type="text/javascript" src="/jqueryui/js/jquery-ui-1.7.2.custom.min.js"></script--> 
<link rel="stylesheet" href="css/slimbox2.css" type="text/css" media="screen" /> 
<script type="text/JavaScript" src="js/slimbox2.js"></script> 
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
    <%
       DataBase db = new DataBase();
       Response.Write(db.SelectSetting("galleytitle").ToString());
        %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Gallery" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">
    	<h2 dir="rtl">گالری تصاویر</h2>
            
    <uc1:GalleryDisplay runat="server" ID="GalleryDisplay" />
            
            <div class="cleaner"></div>
            <div class="pagging">
                <ul>
                    <li><a href="#" rel="nofollow" target="_parent">Previous</a></li>
                    <li><a rel="nofollow" href="#" target="_parent">1</a></li>
                    <li><a rel="nofollow" href="#" target="_parent">2</a></li>
                    <li><a rel="nofollow" href="#" target="_parent">3</a></li>
                    <li><a rel="nofollow" href="#" target="_parent">4</a></li>
                    <li><a rel="nofollow" href="#" target="_parent">5</a></li>
                    <li><a rel="nofollow" href="#" target="_parent">6</a></li>
                    <li><a rel="nofollow" href="#" target="_parent">Next</a></li>
                </ul>
            </div>   
    <div class="cleaner"></div>
</asp:Content>

