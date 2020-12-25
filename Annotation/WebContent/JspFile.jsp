<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP File</title>
</head>
<body>
<%-- To include a static file --%>
<%@ include file = "File1.txt" %>
<br/>
<%-- To include a dynamic file --%>
<jsp:include page="File2.txt"></jsp:include>
</body>
</html>