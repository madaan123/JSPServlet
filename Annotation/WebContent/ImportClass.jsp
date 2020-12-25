<%@ page import="java.util.Date,org.studyeasy.UserClass"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>	
	<%
	out.print(new Date());
	out.print("<br/>");
	out.print(new UserClass().Demo());
	%>
</body>
</html>