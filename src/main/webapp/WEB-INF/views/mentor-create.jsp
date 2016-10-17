<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="parts/head.jsp" %>
<%--
	On this page we have a form to create a mentor.
	
	Model:
	- Mentor mentor ~ a mentor with no properties set at all
 --%>

<body>

<%@include file="parts/login-bar.jsp" %>
<div class="container">
<p>
Mentoring is a process for the informal transmission of knowledge, social capital, and the psychosocial support 
perceived by the recipient as relevant to work, career, or professional development;
If you have any questions in mind  regarding the the program our experienced and knowledgeable
mentors are here to  help to guide you throughout the course to give you better understanding and knowledge 
They  have been through all what you are going through. It is a learning and development partnership between your mentor  with vast 
experience and 
someone who wants to learn, you. Mentorship experience and relationship will be helpful to achieve your goal . So ask any questions you have in mind


</p>
<h1>
	Add a mentor
</h1>

<form method="post">
	<div>
		<label>First Name</label>
		<input type="text" name="firstName" value="${mentor.firstName}"/>
	</div>
	<div>
		<label>Last Name</label>
		<input type="text" name="lastName" value="${mentor.lastName}"/>
	</div>
	<div>
		<label>Email</label>
		<input type="text" name="email" value="${mentor.email}"/>
	</div>
	
		<label>Company Name</label>
		<input type="text" name="company" value="${mentor.company}"/>
	</div>
	<div>
		<label>Title</label>
		<input type="text" name="title" value="${mentor.title}"/>
	</div>
	<div>
		<label>Year Graduated</label>
		<input type="text" name="year graduated" value="${mentor.yearGraduated}"/>
	</div>
	<div>
		<label>Description</label>
		<input type="text" name="description" value="${mentor.description}"/>
	</div>
	<div>
		<label>Available</label>
		<input type="text" name="available" value="${mentor.available}"/>
	</div>
	
	
	<button type="submit">Create</button>
</form>
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
