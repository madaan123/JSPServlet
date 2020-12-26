<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Get Property</title>
</head>
<body>
<%-- To set a single bean for specific session --%>
<jsp:useBean id="user" class="org.studyeasy.User" scope="session"></jsp:useBean>
<%-- name should be id of the bean and property shall be the parameter of class --%>
<jsp:setProperty property="*" name="user"/>
First Name: <jsp:getProperty property="firstName" name="user"/> <br/>
Last Name: <jsp:getProperty property="lastName" name="user"/>
</body>
</html>