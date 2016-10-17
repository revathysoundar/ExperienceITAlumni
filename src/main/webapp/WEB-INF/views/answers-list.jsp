<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%--
	On this page we list all the questions.
	
	Model:
	- List<Question> questions
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
	answers  List
</h1>



<table>
	<tr>
		<th>Answers</th>  
	</tr>
	<c:forEach var="answers" items="${answers}" >
		<tr>
			<td><a href="<c:url value="/answers/${answers.id}"/>"><c:out value="${ answers.answers}"/></a></td>
			
		</tr>
	</c:forEach>
</table>
<div class="action-bar">
	<a class="add-btn" href="<c:url value="/answers/create"/>">Add a answer</a>
</div>


<img src="resources/Images/ExperienceITAlumniLOGO.png">


</body>
</html>
s