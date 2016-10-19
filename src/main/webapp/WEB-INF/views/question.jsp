<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
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
<div><p>
Please join the discussion! This forum covers Experience IT  community news,  and any questions students  have in mind regarding program.
You are welcome to  benefit from it and post your questions and answers.
</p>
</div>
<div class="table-responsive">
<table class="table table-striped">
    <thead>
      <tr>
        <th>Questions</th>
      </tr>
    </thead>
   <c:forEach var="question" items="${questions}">
    <tbody>
      <tr>
        <td style="width:60%;"><p><a href="<c:url value="/questions/${question.qId}"/>"><c:out value="${question.question}"/></a></p></td>
    	<td><p style="color:#337ab7;">Posted:<c:out value="${question.questionOwner}"/></p></td>
      	<td><p style="color:#337ab7;"><c:out value="${question.date}"/></p></td>
     </tr>
      
    </tbody>
    </c:forEach>
  </table>
	</div>
	<div>
	<label>Ask a Question</label></div>
	<div>
	<textarea class="form-control" rows="5" id="mytextarea" name="question"></textarea>
	
	
	</div>
	<div class="action-bar">
	
	<button type="submit" id="button" onclick="myFunction()">Submit</button>
</div>

	
	</form>
	<!--  Footer Starts -->
    <div class="footer">
      <div class="row">
        Copyright &copy; 2016 ExperienceIT Alumni. All rights reserved. 
	     
	   
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
