<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>member Area</title>
</head>
<body>
Member Area!!<br/>
<%
String username=null, sessionID=null;
if(request.getSession().getAttribute("username") == null){
	response.sendRedirect(request.getContextPath()+"/SiteController?action=login");
}else{
	username = request.getSession().getAttribute("username").toString();
	sessionID = request.getSession().getId();
}
/*
Storing info via a cookie
Cookie[] cookies = request.getCookies();
if(cookies!=null)
{
	for(Cookie c: cookies)
	{
		if(c.getName().equals("username")){
			username=c.getValue();
		}
		else if(c.getName().equals("JSESSIONID")){
			sessionID = c.getValue();
		}
	}
}

if(username == null || sessionID == null)
	response.sendRedirect("login.jsp");
*/
%>

Username: <%= username %><br/>
SessionID: <%= sessionID %><br/>

<form action="<%= request.getContextPath() %>/MemberAreaController" method="get">
<input type="hidden" name="action" value="destroy">
<input type="submit" value="logout">
</form>

</body>
</html>