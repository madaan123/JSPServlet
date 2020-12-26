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
<%-- for loop in jstl increment by 1 as default --%>
<c:forEach var="i" begin="0" end="30" step="3">
${i}
<br/>
</c:forEach>

<%
String[] names = new String[3];
names[0]="Ashish";
names[1]="Rahul";
names[2]="Ria";
%>

<%-- for each loop in jstl --%>
<c:forEach items="<%=names %>" var="name" >
${name}
<br/>
</c:forEach>

<%-- forToken tag to tokenize a string in jstl --%>
<%! public String URL = "www.google.com"; %>
<c:forTokens items="<%=URL%>" delims="." var="token">
${token} 
<br/>
</c:forTokens>

</body>
</html>