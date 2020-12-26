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
<c:set var="name" value="Ashish"></c:set> 	<%-- setting a jstl tag via set --%>
${name} <%-- expression tag --%>
<c:out value="${name}"></c:out>
<%-- removing a tag via remove --%>
<c:remove var="name"/>
${name}
</body>
</html>