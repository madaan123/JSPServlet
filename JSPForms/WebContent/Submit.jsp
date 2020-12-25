<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Submit</title>
</head>
<body>
Name: <%= request.getParameter("name") %> <br/>
Gender: <%= request.getParameter("gender") %> <br/>
Languages Known: <%
String[] languages = request.getParameterValues("language");
if(languages!=null)
{
	for(String l: languages)
	{
		out.print("<br/>"+ l);
	}
}
%> <br/>
Country: <%= request.getParameter("country") %>
</body>
</html>