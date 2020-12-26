<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Property</title>
</head>
<body>
<%-- To set a single bean for entire application --%>
<jsp:useBean id="user" class="org.studyeasy.User" scope="application"></jsp:useBean>
<%-- name should be id of the bean and property shall be the parameter of class --%>
First Name: <jsp:getProperty property="firstName" name="user"/> <br/>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>