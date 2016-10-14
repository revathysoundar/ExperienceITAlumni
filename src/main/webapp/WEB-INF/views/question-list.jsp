<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%--
	On this page we list all the mentors.
	
	Model:
	- List<Mentor> mentors
 --%>
<html>
<head>
	<%@ include file="parts/head.jsp" %>
</head>
<body>
<div class="nav">
	<a href="<c:url value="/"/>">Home</a>
</div>
<h1>
	Questions  List
</h1>



<table>
	<tr>
		<th>Questions</th>  
	</tr>
	<c:forEach var="mentor" items="${mentors}" >
		<tr>
			<td><a href="<c:url value="/mentors/${mentor.id}"/>"><c:out value="${ mentor.firstName }"/><c:out value="${ mentor.lastName }"/><c:out value="${ mentor.email  }"/></a></td>
			
		</tr>
	</c:forEach>
</table>
<div class="action-bar">
	<a class="add-btn" href="<c:url value="/mentors/create"/>">Add a mentor</a>
</div>


<img src="resources/Images/ExperienceITAlumniLOGO.png">


</body>
</html>
s