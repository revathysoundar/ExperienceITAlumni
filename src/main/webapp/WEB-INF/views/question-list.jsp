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
	Questions  List
</h1>



<table>
	<tr>
		<th>Questions</th>  
	</tr>
	<c:forEach var="question" items="${questions}" >
		<tr>
			<td><a href="<c:url value="/questions/${question.id}"/>"><c:out value="${ question.question}"/></a></td>
			
		</tr>
	</c:forEach>
</table>
<div class="action-bar">
	<a class="add-btn" href="<c:url value="/questions/create"/>">Add a question</a>
</div>


<img src="resources/Images/ExperienceITAlumniLOGO.png">


</body>
</html>
s