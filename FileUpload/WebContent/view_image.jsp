<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="org.studyeasy.hibernate.entity.Files" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Image</title>
</head>
<body>
<%! Files file; String path; %>
<% 
file = (Files)request.getAttribute("file");
path = (String)request.getAttribute("path");
%>

FileId: <%= file.getId() %> | File Name: <%= file.getFileName() %>

<%
if(file.getLabel()!=null)
	out.print("<br/>Label: "+file.getLabel());
%>

<%
if(file.getCaption()!=null)
	out.print("<br/>Caption: "+file.getCaption()+"<br/>");
else
	out.print("<br/>");
%>

<a href="${pageContext.request.contextPath}/image_upload.jsp">Home</a><br/>
<a href="${pageContext.request.contextPath}/ImageUpload?action=listingImages">List Available Images</a>
<hr/>
<img src="<%= path+file.getFileName()%>" height='200'/>

</body>
</html>