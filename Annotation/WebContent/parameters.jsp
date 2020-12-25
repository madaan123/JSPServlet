<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Parameters</title>
</head>
<body>
<%-- Printing request parameters from the url --%>
<%
out.println(request.getParameter("param1"));
out.println(request.getParameter("param2"));
%>
</body>
</html>