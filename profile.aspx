<%@ Page Title="" Language="C#" MasterPageFile="~/Index.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head" Runat="Server">
     <meta name="Keywords" content="<% DataBase db = new DataBase();Response.Write(db.SelectSetting("websitekeyword").ToString());%>" />       
        <meta name="Description" content="<% Response.Write(db.SelectSetting("websitedesc").ToString());%>" />    

     <link rel="shortcut icon" href="http://designshack.net/favicon.ico"/>
  <link rel="icon" href="http://designshack.net/favicon.ico"/>
  <link rel="stylesheet" type="text/css" media="all" href="/profile/css/styles.css"/>
  <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
     <style type="text/css">
         .auto-style1 {
             width: 50%;
             float: right;
         }
     </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Title" Runat="Server">
              <% DataBase db = new DataBase(); Response.Write(db.SelectSetting("websitetitle").ToString());%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Gallery" Runat="Server">

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Content" Runat="Server">
  
  <div id="w" style="direction:rtl;width:90%;height:600px;">

      <h1 style="font-family:Verdana;">اطلاعات کاربری</h1>
      <nav id="profiletabs">
        <ul class="clearfix" dir="rtl" >
            <li><asp:Button ID="butAboutMe" CssClass="sel" OnClick="butAboutMe_Click" runat="server" Text="درباره من"></asp:Button>
                <asp:Button ID="butBasicInfo" runat="server" OnClick="butBasicInfo_Click" Text="اطلاعات پايه" />
            </li>
       </ul>
      </nav>
      <div style="margin:0 px auto;width:100%">
             <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0" >
              <asp:View ID="basicInfo" runat="server" >
                  <table align="right" style= "font-family:Verdana, Geneva, Tahoma, sans-serif;font-weight:900" class="auto-style1" dir="rtl">
                      <tr>
                          <td>
                              <asp:Label ID="lblUserName" runat="server" Text="نام کاربری:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtUser"  CssClass="input f14" placeholder=" نام کاربری " runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblPass" runat="server" Text="رمز عبور:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtPass" runat="server" placeholder=" رمز عبور " TextMode="Password"></asp:TextBox>
                              <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPass0" ControlToValidate="txtPass" ErrorMessage="CompareValidator" ForeColor="Red" ValidationGroup="butEdit">*</asp:CompareValidator>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblPass0" runat="server" Text="تکرار رمز عبور:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtPass0" placeholder=" تكرار رمز عبور " runat="server" TextMode="Password"></asp:TextBox>
                              <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="txtPass" ControlToValidate="txtPass0" ErrorMessage="CompareValidator" ForeColor="Red" ValidationGroup="butEdit">*</asp:CompareValidator>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblEmail" runat="server" Text="پست الکترونیک:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtEmail" runat="server" placeholder=" پست الکترونیک " TextMode="Email"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblCellPhone" runat="server" Text="موبایل:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtCellPhone" placeholder=" موبايل "  runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblName" runat="server" Text="نام:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtName" placeholder=" نام " runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblLastName" runat="server"  Text="نام خانوادگی:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtLastName" placeholder=" نام خانوادگي " runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Button ID="butEdit" CssClass="btn btn-confirm js-login" Width="100%" runat="server" OnClick="butEdit_Click" Text=" ویرایش اطلاعات" />
                          </td>
                          <td>
                              <asp:Label ID="lblEditResult" runat="server"></asp:Label>
                          </td>
                      </tr>
                  </table>
              </asp:View>
              <asp:View ID="aboutMe" runat="server">
                  <table align="right" style= "font-family:Verdana, Geneva, Tahoma, sans-serif;font-weight:900" class="auto-style1" dir="rtl" >
                      <tr>
                          <td>
                              <asp:Label ID="lblEduc" runat="server" Text="مقطع تحصیلی:"></asp:Label>
                          </td>
                          <td>
                              <asp:DropDownList ID="ddlEducate" runat="server">
                                  <asp:ListItem Selected="True">انتخاب كنيد</asp:ListItem>
                                  <asp:ListItem>ديپلم</asp:ListItem>
                                  <asp:ListItem>فوق ديپلم</asp:ListItem>
                                  <asp:ListItem>ليسانس</asp:ListItem>
                                  <asp:ListItem>فوق ليسانس</asp:ListItem>
                                  <asp:ListItem>دكترا</asp:ListItem>
                              </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblField" runat="server" Text="زمینه کاری:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtField" runat="server" TextMode="Email"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblProvince" runat="server" Text="استان:"></asp:Label>
                          </td>
                          <td>
                              <asp:DropDownList ID="ddlProvince" runat="server">
                              </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblCity" runat="server" Text="شهرستان:"></asp:Label>
                          </td>
                          <td>
                              <asp:DropDownList ID="ddlCity" runat="server">
                              </asp:DropDownList>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblComName" runat="server" Text="نام شركت/فروشگاه:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtComName" runat="server"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblAddress" runat="server" Text="آدرس:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtAddress" runat="server" TextMode="MultiLine"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Label ID="lblPhone" runat="server" Text="تلفن ثابت:"></asp:Label>
                          </td>
                          <td>
                              <asp:TextBox ID="txtPhone" runat="server" TextMode="Number"></asp:TextBox>
                          </td>
                      </tr>
                      <tr>
                          <td>
                              <asp:Button ID="butEdit0" runat="server" Width="100%" CssClass="btn btn-confirm js-login" OnClick="butEdit_Click" Text="ویرایش اطلاعات" />
                          </td>
                          <td>
                              <asp:Label ID="lblEditResult0" runat="server"></asp:Label>
                          </td>
                      </tr>
                  </table>
              </asp:View>
                            

          </asp:MultiView>
      </div>

  </div>
</asp:Content>

