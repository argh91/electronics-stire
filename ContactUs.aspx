<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="ContactUs.aspx.cs" Inherits="ContactUs" %>

<%@ Register assembly="CKEditor.NET" namespace="CKEditor.NET" tagprefix="CKEditor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
     <meta name="Keywords" content="<% DataBase db = new DataBase();Response.Write(db.SelectSetting("websitekeyword").ToString());%>" />       
        <meta name="Description" content="<% Response.Write(db.SelectSetting("websitedesc").ToString());%>" />    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
    <%
       DataBase db = new DataBase();
       Response.Write(db.SelectSetting("contactustitle").ToString());
        %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Gallery" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">
        <div class="half float_l" style="direction:rtl;float:right;width:100%;padding:2%;font-family:Verdana;" >
                <h2 dir="rtl"> تماس با ما</h2>
        <h4 dir="rtl">هم اکنون با ما در تماس باشید!</h4>
            <p dir="rtl">کاربر گرامی: لطفا نظرات، انتقادات و پیشنهادات خود را توسط فرم زیر با ما در میان گذارید.</p>
            <div id="contact_form">
             
                <table align="center" class="auto-style1">
                    <tr>
                        <td>
                            <asp:Label ID="Label1" runat="server" Text="نام و نام خانوادگی:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label2" runat="server" Text="شماره تماس:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtTell" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label3" runat="server" Text="رایانامه:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label4" runat="server" Text="عنوان پیام:"></asp:Label>
                        </td>
                        <td>
                            <asp:TextBox ID="txtSubject" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Label ID="Label5" runat="server" Text="متن پیام:"></asp:Label>
                        </td>
                        <td>
                            <CKEditor:CKEditorControl ID="ckBody" runat="server"></CKEditor:CKEditorControl>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Button ID="Button1" Width="100%" CssClass="btn btn-confirm js-add-cart ml20" runat="server" OnClick="Button1_Click" Text="ارسال پیام" />
                        </td>
                        <td>
                            <asp:Button ID="Button2" Width="100%"  CssClass="btn btn-confirm js-add-cart ml20" runat="server" OnClick="Button2_Click" Text="انصراف" />
                        </td>
                    </tr>
                </table>
             
            </div>
		</div>     
        <div class="cleaner h40"></div>
        
        </asp:Content>

