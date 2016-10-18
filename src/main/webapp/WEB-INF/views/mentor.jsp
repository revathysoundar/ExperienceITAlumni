<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%--
	On this page we have a form to edit a single mentor and a button to delete it.
	
	Model:
	- Mentor mentor
 --%>
<html>
<head>
	<%@ include file="parts/head.jsp" %>
</head>
<body>

	<%@ include file="parts/login-bar.jsp" %>

<div class="container">
<form class="form-horizontal" method="post">

  <div class="form-group">
      <label class="control-label col-sm-2" for="fname">FirstName:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="firstName" value="${mentor.firstName}">
      </div>
   </div>
   <div class="form-group">
      <label class="control-label col-sm-2" for="lname">LastName:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="lastName" value="${mentor.lastName}">
      </div>
   </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-4">
        <input type="email" class="form-control" name="email" value="${mentor.email}">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="cname">CompanyName:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="company" value="${mentor.company}">
      </div>
   </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="title">Job Title:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="title" value="${mentor.title}">
      </div>
   </div>
   <div class="form-group">
      <label class="control-label col-sm-2" for="year">Year Graduated:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="year graduated" value="${mentor.yearGraduated}">
      </div>
   </div>
   <div class="form-group">
      <label class="control-label col-sm-2" for="desc">Description:</label>
      <div class="col-sm-4">
        <input type="text" class="form-control" name="description" value="${mentor.description}">
      </div>
   </div>
   <div class="form-group"> 
   
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label><input type="checkbox" value="${mentor.available}" <c:if test="${mentor.available}">checked</c:if>/>I'm Available</label>
      </div>
    </div>
  </div>

	
	<button type="submit">Save Changes</button>
</form>

<form method="post" action="<c:url value="/mentors/${mentor.id}/delete"/>">
	<button type="submit">Delete this Mentor</button>
</form>
</div>
<!--  Footer Starts -->
    <div class="container">
      <div class="row">
        <p align="center" style="padding:30px;">Copyright &copy; 2016 ExperienceIT Alumni. All rights reserved. 
	     
	    </p>
       </div>
    </div>
    
    <!-- Footer Ends  -->
    
</body>
</html>
