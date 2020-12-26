<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:import url="/Include/Header.jsp"> </c:import>
<c:set var="name" value="Ashish"></c:set> 	<%-- setting a jstl tag via set --%>
${name} <%-- expression tag --%>
<c:out value="${name}"></c:out>
<%-- removing a tag via remove --%>
<c:remove var="name"/>
${name}
<c:import url="/Include/Footer.jsp"> </c:import>