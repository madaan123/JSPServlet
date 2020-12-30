<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:import url="/Include/header_template.jsp">
	<c:param name="title" value="Update User"></c:param>
</c:import>

<c:import url="/Include/Hero.jsp">
</c:import>

<section id="services" class="services section-bg">
	<div class="container" data-aos="fade-up">
		<div class="section-title">
			<h2>Update User</h2>
		
			<form action="${pageContext.request.contextPath}/operation" method="post">
			Username: <input type="text" name="username" required="required" value="${param.username }"><br/><br/>
			Email: <input type="email" name="email" required="required" value="${param.email }"><br/><br/>
			<input type="hidden" name="userId" value="${param.userId }" />
			<input type="hidden" name="form" value="updateuser_operation" /> 
			<input type="submit" value="Update User"/>
			</form>
		</div>
	</div>
</section>

<c:import url="/Include/footer_template.jsp">
</c:import>