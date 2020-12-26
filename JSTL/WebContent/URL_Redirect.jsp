<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<c:import url="/Include/Header.jsp"> 
<c:param name="title" value="JSTL REDIRECT"> </c:param>
</c:import>

<%-- URL generation to another jsp file in jstl --%>
<a href="<c:url value="/AnotherPage.jsp"/>">Another Page</a>

<%-- Redirection to another jsp file in jstl --%>
<c:redirect url="/AnotherPage.jsp" />

<c:import url="/Include/Footer.jsp"> </c:import>