<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- conditional tag in jstl --%>
<c:if test="${param.name == 'Ashish'}">
Hello Ashish <br/>
</c:if>
Hello User
<br/>

<%-- conditional tag choose and when in jstl similar to switch case --%>
<c:choose> 
	<c:when test="${param.lang == 'Java'}"> 
		I am Learning Java
	</c:when>
	<c:when test="${param.lang == 'PHP'}"> 
		I am Learning PHP
	</c:when>
	<c:otherwise> 
		I am Learning something good
	</c:otherwise>
</c:choose>
<br/>
</body>
</html>