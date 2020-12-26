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
<form action="GetProperty.jsp" >
First Name: <input type="text" name="firstName" value='<jsp:getProperty property="firstName" name="user"/>'><br/>
Last Name: <input type="text" name="lastName" value='<jsp:getProperty property="lastName" name="user"/>'><br/>
<input type="submit" value="Submit">
</form>
</body>
</html>