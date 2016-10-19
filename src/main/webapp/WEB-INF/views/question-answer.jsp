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
<div class="container">
	<p><c:out value="${question.question}"/></p>
	<p style="color:blue;">Posted by: <c:out value="${question.questionOwner}"/> on <c:out value="${question.date}"/></p>
	<form method="post" action="<c:url value="/answers/add/"/>">
	<div class="table-responsive">
	<table class="table table-striped">
    <thead>
      <tr>
        <th><p>Answers</p></th>
      </tr>
    </thead>
   <c:forEach var="answer" items="${answer}">
    <tbody>
      <tr>
        <td><p style="color:#337ab7;"><c:out value="${answer.answer}"/></p></td>
        <td><p style="color:#337ab7;">Posted:<c:out value="${question.questionOwner}"/></p></td>
      	<td><p style="color:#337ab7;"><c:out value="${question.date}"/></p></td>
     </tr>
      
    </tbody>
    </c:forEach>
  </table>
	</div>
	<div>
	<label>Want to Answer</label></div>
	<div>
	<textarea class="form-control" rows="5" id="mytextarea" name="answer"></textarea>
	<input type="hidden" name="qid" value="${question.qId}">
	
	<div class="action-bar">
	<button type="submit" id="button" onclick="myFunction()">Submit</button>
</div>
</div>

	</form>
	<!--  Footer Starts -->
    <div class="footer">
      <div class="row">
        Copyright &copy; 2016 ExperienceIT Alumni. All rights reserved. 
	     
	  
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