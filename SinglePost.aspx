<%@ Page Title="" Language="C#" MasterPageFile="~/PostComment.master" AutoEventWireup="true" CodeFile="SinglePost.aspx.cs" Inherits="SinglePost" %>

<%@ Register Src="~/manage/UserControls/PostDisplay.ascx" TagPrefix="uc1" TagName="PostDisplay" %>
<%@ Register Src="~/manage/UserControls/CommentDisplay.ascx" TagPrefix="uc1" TagName="CommentDisplay" %>



<asp:Content ID="Content1" ContentPlaceHolderID="PostAndComments" runat="Server">



    <uc1:PostDisplay runat="server" ID="PostDisplay" />
    <div class="cleaner h40"></div>
    <h3>نظرات کاربران</h3>

    <div id="comment_section">
        <ol class="comments first_level">
            <li>
                <uc1:CommentDisplay runat="server" ID="CommentDisplay" />
            </li>

        </ol>
        <div class="cleaner h20"></div>
        

    </div>

    <div class="cleaner h20"></div>
</asp:Content>

