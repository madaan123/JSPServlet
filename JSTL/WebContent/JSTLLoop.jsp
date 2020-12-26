<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Loop</title>
</head>
<body>
<%-- loop in jstl increment by 1 as default --%>
<c:forEach var="i" begin="0" end="30" step="3">
${i}
<br/>
</c:forEach>
</body>
</html>