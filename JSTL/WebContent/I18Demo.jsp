<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="/Include/Header.jsp"> 
<c:param name="title" value="I18 Multiple Lang"> </c:param>
</c:import>
View Website in:
<a href="?locale=en_US">English(US)</a>
<a href="?locale=es_AR">Argentina</a>
<a href="?locale=ru_RU">Russia</a>
<a href="?locale=hi_IN">India</a>
<hr/>

<fmt:setLocale value="${param.locale}"/>
<fmt:bundle basename="i18n/website"> 
<p><fmt:message key="label.hello" /> John,
<p><fmt:message key="label.welcome" />
<p><fmt:message key="label.message" />
<p><fmt:message key="label.thanks" />
</fmt:bundle>

<br/>
Locale: ${param.locale}

<c:import url="/Include/Footer.jsp"> </c:import>