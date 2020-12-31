<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.studyeasy.hibernate.entity.Files" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List Images</title>
</head>
<body>
Listing Images

<%
	String path = (String) request.getAttribute("path");
	List<Files> files =  (List<Files>)request.getAttribute("files");
	for(Files file:files){
		out.print("<br/><img src="+path+file.getFileName()+">"); 
	}
%>
</body>
</html>