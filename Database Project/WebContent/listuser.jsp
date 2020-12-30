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
		<th> Operation</th>
		</thead>
		
		<%! String deleteURL; %>
		<%
		List<User> listUsers = (List<User>)request.getAttribute("listUsers");
		String updateURL;
		for(int i=0;i<listUsers.size();i++)
		{
			out.print("<tr>");
			out.print("<td>"+listUsers.get(i).getUsers_id()+"</td>");
			out.print("<td>"+listUsers.get(i).getUsername()+"</td>");
			out.print("<td>"+listUsers.get(i).getEmail()+"</td>");
			updateURL = request.getContextPath()+"/home?page=Update_User"+
					"&userId="+listUsers.get(i).getUsers_id()+
					"&username="+listUsers.get(i).getUsername()+
					"&email="+listUsers.get(i).getEmail();
			deleteURL = request.getContextPath()+"/home?page=Delete_User"+
					"&userId="+listUsers.get(i).getUsers_id();
			out.print("<td><a href="+updateURL+">Update</a>|");
		%>
		
		<%-- prompting user before deleting the user data --%>
		<a href="<%= deleteURL%>" 
		onclick="if(!confirm('Are you sure you want to delete')) return false">Delete</a></td>
		</tr>
		<%} %>
		</table>
	</div>
</div>
</section>

<c:import url="/Include/footer_template.jsp"> </c:import>