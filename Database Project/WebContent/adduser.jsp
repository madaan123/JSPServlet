<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/Include/header_template.jsp">
	<c:param name="title" value="Add User"></c:param>
</c:import>

<c:import url="/Include/Hero.jsp">
</c:import>

<section id="services" class="services section-bg">
	<div class="container" data-aos="fade-up">
		<div class="section-title">
			<h2>Add User</h2>
		
			<form action="${pageContext.request.contextPath}/operation" method="post">
			Username: <input type="text" name="username" required="required"><br/><br/>
			Email: <input type="email" name="email" required="required"><br/><br/>
			<input type="hidden" name="form" value="adduser_operation"> 
			<input type="submit" value="Add User">
			</form>
		</div>
	</div>
</section>

<c:import url="/Include/footer_template.jsp">
</c:import>