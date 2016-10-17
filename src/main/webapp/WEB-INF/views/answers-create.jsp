<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Answers</title>
<head>
	<%@ include file="parts/head.jsp" %>
</head>
<body>
<div class="nav">
	<a href="<c:url value="/"/>">Home</a>
	<a href="<c:url value="/answers"/>">Back to Answers List</a>
</div>
<h1>
	Answer a question
</h1>


	<div>
		<label>Please enter you answer</label>
		<input type="text" name="answer" value="${answer.answers}"/>
	</div>
	
	
	
	<button type="submit">answer</button>

</body>
</html>