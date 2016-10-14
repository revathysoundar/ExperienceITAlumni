<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questions</title>
<%--
	On this page we have a form to create a question.
	
	Model:
	- Question question ~ a question with no properties set at all
 --%>
<html>
<head>
	<%@ include file="parts/head.jsp" %>
</head>
<body>
<div class="nav">
	<a href="<c:url value="/"/>">Home</a>
	<a href="<c:url value="/mentors"/>">Back to Questions List</a>
</div>
<h1>
	Ask a question
</h1>


	<div>
		<label>Please enter you question</label>
		<input type="text" name="question" value="${question.question}"/>
	</div>
	
	
	
	<button type="submit">Ask</button>
</form>

</body>
</html>
