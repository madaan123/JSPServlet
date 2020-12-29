<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:import url="/Include/Header.jsp"> 
<c:param name="title" value="I18 Multiple Lang"> </c:param>
</c:import>
View Website in:
<a href="?locale=en_US">English(US)</a>
<a href="?locale=es_AR">Argentina</a>
<a href="?locale=ru_RU">Russia</a>
<a href="?locale=hi_IN">India</a>

<hr/>
<p>Hello
<p>Welcome to our Country
<p>We are pleased with your presence
<p>Thank You

<c:import url="/Include/Footer.jsp"> </c:import>