<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--
	On this page we have a form to edit a single answers 
	
	Model:
	- Answers answers
 --%>
<html>
<head>
	<%@ include file="parts/head.jsp" %>
</head>
<body>
<div class="nav">
	<a href="<c:url value="/"/>">Home</a>
	<a href="<c:url value="/answers"/>">Back to Answers List</a>
	
</div>
<h1>
	Answers: ${answers.answers }
</h1>


	
	
	
  
<form method="post" action="<c:url value="/answers/${answers.qId}/create"/>">
	<button type="submit">Answer question</button>
</form>

</body>
</html>
