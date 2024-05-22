<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <link type="text/css" rel="stylesheet"
 href="services/?stylesheet=1">
  <meta http-equiv="content-type"
 content="text/html; charset=UTF-8">
  <title>CXF - Service list</title>
</head>
<body>
<%
   String hostname = request.getServerName();
   String scheme = request.getScheme();
   String contextPath = request.getServletContext().getContextPath();
%>
<span class="heading">Available Bookstore SOAP services:</span><br>
<table style="text-align: left; width: 925px;" border="1"
 cellpadding="1" cellspacing="1" width="100%">
  <tbody>
    <tr>
      <td style="width: 400px;"><span class="porttypename">Bookstore</span>
      <ul>
      </ul>
      </td>
      <td style="width: 1183px;"><span class="field">Parasoft Bookstore Web service with a database backend. Includes a total of 9 book items.
	  <br>
      <br>
      <span class="field">Target namespace:</span> <span class="value">http://store.parabank.parasoft.com/</span></td>
    </tr>
    <tr>
      <td style="width: 400px;"><span class="porttypename">Bookstore (Version 2.0)</span>
      <ul>
      </ul>
      </td>
      <td style="width: 1183px;"><span class="field">Parasoft Bookstore Web service with a database backend. Includes a total of 9 book items.
	  <br>
      <br>
      <span class="field">Target namespace:</span> <span class="value">http://store.parabank.parasoft.com/</span></td>
    </tr>
    <tr>
      <td style="width: 400px;"><span class="porttypename">Bookstore <br> (WS-Security Username Token)</span>
      <ul>
      </ul>
      </td>
      <td style="width: 1183px;"><span class="field">Parasoft Bookstore Web service secured using WS-Security Username Token.
	  <br>
	  Clients need to authenticate themselves using Username Token.
	  <br>
      <br>
	  username:soatest<br>
	  password:soatest<br>
      <br>
      <span class="field">Target namespace:</span> <span class="value">http://store.parabank.parasoft.com/</span></td>
    </tr>
  </tbody>
</table>
</body>
</html>
