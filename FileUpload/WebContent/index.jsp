<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Image Upload Form</title>
</head>
<body>
<form action="ImageUpload?action=FileUpload" method="post" enctype="multipart/form-data">
Select Images:<input type="file" name="files" multiple="multiple">
<input type="submit" value="upload">
<br/>
<a href="${pageContext.request.contextPath}/ImageUpload?action=listingImages"> List Images</a>
</form>
</body>
</html>