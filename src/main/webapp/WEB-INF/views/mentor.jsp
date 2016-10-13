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
<div class="nav">
	<a href="<c:url value="/"/>">Home</a>
	<a href="<c:url value="/mentors"/>">Back to Mentors List</a>
	<a href="<c:url value="/about-us"/>">Back </a>
</div>
<h1>
	Mentor: ${ mentor.firstName } ${ mentor.lastName }
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
	<div>
		<label>Company Name</label>
		<input type="text" name="firstName" value="${mentor.company}"/>
	</div>
	<div>
		<label>Title</label>
		<input type="text" name="lastName" value="${mentor.title}"/>
	</div>
	<div>
		<label>Year Graduated</label>
		<input type="text" name="email" value="${mentor.yearGraduated}"/>
	</div>
	<div>
		<label>Description</label>
		<input type="text" name="firstName" value="${mentor.description}"/>
	</div>
	<div>
		<label>Available</label>
		<input type="text" name="lastName" value="${mentor.available}"/>
	</div>
	
	
	<button type="submit">Save Changes</button>
</form>

<form method="post" action="<c:url value="/mentors/${mentor.id}/delete"/>">
	<button type="submit">Delete this Mentor</button>
</form>

</body>
</html>
