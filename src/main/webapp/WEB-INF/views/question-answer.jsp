<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   
<%--
	On this page we list all the mentors.
	
	Model:
	- Question question
	Model:
	- List<Answer> answer
	
 --%>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="parts/head.jsp" %>
</head>
<body>
	<%@ include file="parts/login-bar.jsp" %>

	<c:out value="${question.question}"/>
	
	
<form method="post" action="<c:url value="/answers/add/"/>">
	<table border=1>
	<tr>
		<th>Answers</th>
	</tr>
	<c:forEach var="answer" items="${answer}">
	<tr>
	
	<td>
	<c:out value="${answer.answer}"/>
	</td>
	
	</tr>
	
	</c:forEach>
	</table>
	
	<div>
	<label>Want to Answer</label></div>
	<div>
	<textarea rows="10" cols="100" id="mytextarea" name="answer"></textarea>
	<input type="hidden" name="qid" value="${question.qId}">
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
    
<script>
	function myFunction() {
    	var x = document.getElementById("myTextarea").value;
    	document.getElementById("demo").innerHTML = x;
   		
	}
</script>
</body>
</html>