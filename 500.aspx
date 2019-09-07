<%@ Page Language="C#" AutoEventWireup="true" CodeFile="500.aspx.cs" Inherits="_500" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
      <meta name="Keywords" content="<% DataBase db = new DataBase();Response.Write(db.SelectSetting("websitekeyword").ToString());%>" />       
        <meta name="Description" content="<% Response.Write(db.SelectSetting("websitedesc").ToString());%>" />    
          <title><% DataBase db = new DataBase(); Response.Write(db.SelectSetting("websitetitle").ToString());%></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="direction:rtl;margin:0px auto">
        	<div style="text-align:center" >
        		<img class="error-img" src="/images/500.jpg" />
        	</div>
        	<div class="tip" style="text-align:center" ><h2>اختلال در عملكرد  سرور!</h2></div>
        	<div class="tip" style="text-align:center" ><a href="#" class="linkurl">تلاش مجدد...</a></div>
        <footer class="footer" id="footer"><div class="be-footer"></div></footer>
    </div>
    </form>
</body>
</html>
