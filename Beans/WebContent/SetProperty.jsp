<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Set Property</title>
</head>
<body>
<jsp:useBean id="user" class="org.studyeasy.User" scope="session"></jsp:useBean>
<%-- name should be id of the bean and property shall be the parameter of class --%>
<jsp:setProperty property="firstName" name="user" value="Rahul"/> <br/>
<jsp:setProperty property="lastName" name="user" value="Sharma"/>
Values have been set
</body>
</html>