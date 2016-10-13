<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%--
	On this page we have a form to create a mentor.
	
	Model:
	- Mentor mentor ~ a mentor with no properties set at all
 --%>
<html>
<head>
	<%@ include file="parts/head.jsp" %>
</head>
<body>
<div class="nav">
	<a href="<c:url value="/"/>">Home</a>
	<a href="<c:url value="/mentors"/>">Back to Mentors List</a>
</div>
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
	<%--<div>
		<label>Password</label>
		<input type="password" name="password" value="${mentor.password}"/>
	</div>
	<div>--%>
		<label>Company Name</label>
		<input type="text" name="company" value="${mentor.company}"/>
	</div>
	<div>
		<label>Title</label>
		<input type="text" name="title" value="${mentor.title}"/>
	</div>
	<div>
		<label>Year Graduated</label>
		<input type="Integer" name="year graduated" value="${mentor.yearGraduated}"/>
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

</body>
</html>
