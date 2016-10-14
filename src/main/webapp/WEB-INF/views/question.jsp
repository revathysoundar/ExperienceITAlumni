<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--
	On this page we have a form to edit a single question 
	
	Model:
	- Question question
 --%>
<html>
<head>
	<%@ include file="parts/head.jsp" %>
</head>
<body>
<div class="nav">
	<a href="<c:url value="/"/>">Home</a>
	<a href="<c:url value="/questions"/>">Back to Questions List</a>
	
</div>
<h1>
	Question: ${ question.question }
</h1>


	
	
	
<!--  
<form method="post" action="<c:url value="/questions/${question.qId}/create"/>">
	<button type="submit">Ask question</button>
</form>
-->
</body>
</html>
