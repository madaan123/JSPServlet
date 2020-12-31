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
<h1>Listing Images</h1>
<%! String form; int fileId; %>

<%
	form = "<form action='ImageUpload' method='post'>"+
			"Label: <input type='text' name='label'/><br/><br/>"+
			"Caption: <input type='text' name='caption'/><br/><br/>"+
			"<input type='hidden' name='fileId' value='"+fileId+"'/>"+
			"<input type='hidden' name='action' value='updateInformation'/>"+
			"<input type='submit' value='update'/>"+
			"</form>";
%>

<table border="1">
<tr>
<th> Preview</th>
<th> Available Information</th>
<th> Update Information</th>
<th> Action</th>
</tr>
<%
	String path = (String) request.getAttribute("path");
	List<Files> files =  (List<Files>)request.getAttribute("files");
	for(Files file:files){
		fileId = file.getId();
		out.print("<tr><td><img src="+path+file.getFileName()+" height='200' width='200' ></td>"); 
		out.print("<td><ul>"+
				"<li>File ID:"+file.getId()+"</li>"+
				"<li>File Name:"+file.getFileName()+"</li>"+
				"<li>File Label:"+file.getLabel()+"</li>"+
				"<li>File caption:"+file.getCaption()+ "</li>"+
				"</ul></td>");
		
		form = "<form action='ImageUpload' method='post'>"+
				"Label: <input type='text' name='label'/><br/><br/>"+
				"Caption: <input type='text' name='caption'/><br/><br/>"+
				"<input type='hidden' name='fileId' value='"+fileId+"'/>"+
				"<input type='hidden' name='action' value='updateInformation'/>"+
				"<input type='submit' value='update'/>"+
				"</form>";
				
		out.print("<td>"+form+"</td>");
		
		out.print("<td><ul><li><a href='"+request.getContextPath()+"/ImageUpload?action=viewImage&fileId="+
				fileId+"'>View Image</a></li></ul></td></tr>");
	}
%>

</table>
</body>
</html>