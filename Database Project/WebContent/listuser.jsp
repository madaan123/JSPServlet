<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="org.studyeasy.entity.User" %>
<c:import url="/Include/header_template.jsp"> 
<c:param name="title" value="List User"></c:param>
</c:import>

<c:import url="/Include/Hero.jsp"> </c:import>

<section id="services" class="services section-bg">
<div class="container" data-aos="fade-up">
	<div>
		<h2>List User</h2>
		<table border="1">
		
		<thead>
		<th> User ID</th>
		<th> Username</th>
		<th> Email</th>
		</thead>
		
		<%
		List<User> listUsers = (List<User>)request.getAttribute("listUsers");
		for(int i=0;i<listUsers.size();i++)
		{
			out.print("<tr>");
			out.print("<td>"+listUsers.get(i).getUsers_id()+"</td>");
			out.print("<td>"+listUsers.get(i).getUsername()+"</td>");
			out.print("<td>"+listUsers.get(i).getEmail()+"</td>");
			out.print("</tr>");
		}
		%>
		
		</table>
	</div>
</div>
</section>

<c:import url="/Include/footer_template.jsp"> </c:import>