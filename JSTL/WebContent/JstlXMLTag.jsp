<%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<c:import url="/Include/Header.jsp"> 
<c:param name="title" value="JSTL XML TAG"> </c:param>
</c:import>

<%-- import xml file and display data using xml tags--%>
<c:import url="/Users.xml" var="XMLFile"></c:import>
<x:parse xml="${XMLFile}" var="XMLDoc"></x:parse>
Name: <x:out select="$XMLDoc/users/user[2]/name"/><br/>
Gender: <x:out select="$XMLDoc/users/user[2]/gender"/><br/>
Age: <x:out select="$XMLDoc/users/user[2]/age"/><br/>

<%-- for each loop --%>
<table border="1">
<x:forEach select="$XMLDoc/users/user">
<tr>
<x:if select="age<25">
<td><x:out select="name"/></td>
<td><x:out select="gender"/></td>
<td><x:out select="age"/></td>
</x:if>
</tr>
</x:forEach>
</table>

<c:import url="/Include/Footer.jsp"> </c:import>
