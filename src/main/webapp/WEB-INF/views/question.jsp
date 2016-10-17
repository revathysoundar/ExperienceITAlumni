<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--
	On this page we have a form to edit a single question 
	
	Model:
	- List<Question> questions
 --%>
<html>
<head>
	<%@ include file="parts/head.jsp" %>
</head>
<body>

<%@ include file="parts/login-bar.jsp" %>
<div class="container">
<form method="post" action="<c:url value="/questions/add"/>">
<h1>
	Forum
</h1>
<div>
Please join the discussion! This forum covers Experience IT  community news,  and any questions students  have in mind regarding program
You are welcome to  benefit from it and post your comments and answers to the questions .

</div>
	<table border="1">
	<tr>
		<th>Question</th>
	</tr>
	<c:forEach var="question" items="${questions}">
	<tr>
	<td>
	 <a href="<c:url value="/questions/${question.qId}"/>"><c:out value="${question.question}"/>
		</a></td>
	</tr>
	
	</c:forEach>
	</table>
	
	<div>
	<label>Ask a Question</label></div>
	<div>
	<textarea rows="10" cols="100" id="mytextarea" name="question"></textarea>
	
	</div>
	<div class="action-bar">
	<button type="submit" onclick="myFunction()">Submit</button>
</div>

	
	</form>
	<!--  Footer Starts -->
    <div class="container">
      <div class="row">
        <p align="center" style="padding:30px;">Copyright &copy; 2016 ExperienceIT Alumni. All rights reserved. 
	     
	    </p>
       </div>
    </div>
    
    <!-- Footer Ends  -->
	</div>
<script>
	function myFunction() {
    	var x = document.getElementById("myTextarea").value;
   		document.getElementById("demo").innerHTML = x;
	}
</script>
</body>
</html>
