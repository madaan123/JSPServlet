<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:import url="/Include/Header.jsp"> 
<c:param name="title" value="JSTL FUNCTION TAG"> </c:param>
</c:import>
<%-- length function in function tags --%>
Studyeasy Length: ${fn:length("studyeasy")}
<br/>

<% 
String names[] = {"Ashish", "Rohan", "Rahul"};
%>

<c:set var="namesArray" value="<%= names %>"/>
${fn:length(namesArray)}
<br/>
<%-- Trim extra spaces by trim function --%>
${fn:trim("Ashish       Madaan") }<br/>

<%-- String comparing functions  --%>
<c:set var="We" value="Studyeasy.org"></c:set>
${fn:startsWith(We,"S") }<br/>
${fn:endsWith(We,"org") }<br/>
${fn:contains(We,"ORG") }<br/>
${fn:containsIgnoreCase(We,"ORG") }<br/>

${fn:toLowerCase(We) }<br/>
${fn:toUpperCase(We) }<br/>
${fn:indexOf(We,"u") }<br/>
${fn:replace(We,"Study","Rest") }<br/>
${fn:substring(We,2,5) }<br/>
${fn:substringAfter(We,"Study") }<br/>
${fn:substringBefore(We,"easy") }

<c:import url="/Include/Footer.jsp"> </c:import>
