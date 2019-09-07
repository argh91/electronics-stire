<%@ Page Language="C#" AutoEventWireup="true" CodeFile="404.aspx.cs" Inherits="_404_404" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
       <meta name="Keywords" content="<% DataBase db = new DataBase();Response.Write(db.SelectSetting("websitekeyword").ToString());%>" />       
        <meta name="Description" content="<% Response.Write(db.SelectSetting("websitedesc").ToString());%>" />    
          <title><% DataBase db = new DataBase(); Response.Write(db.SelectSetting("websitetitle").ToString());%></title>

</head>
<body>
    <form id="form1" runat="server">
    <div style="direction:rtl;text-align:center;">
        	<div >
        		<img class="error-img" src="/images/404.jpg" />
        	</div>
        	<div class="tip" ><h2>صفحه مورد نظر يافت نشد!!!</h2></div>
        	<div class="tip" ><a href="#" class="linkurl">گزارش خطا...</a></div>
        <footer class="footer" id="footer"><div class="be-footer"></div></footer>
    </div>
    </form>
</body>
</html>
