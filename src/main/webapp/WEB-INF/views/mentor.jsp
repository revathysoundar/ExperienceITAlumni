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

<!--Navigation bar-->
	<section id="Navlist">
	 
		<nav class="navbar navbar-default no-margin nav-first" role="navigation">
			<div class="navbar-header">
			    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
			      <span class="sr-only">Toggle navigation</span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			    </button>
    			<a class="navbar-logo" href="#"><img class="logo" src="resources/Images/logo.png"></a>
  			</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    				<ul class="nav navbar-nav">
    					<li class="menu"><a href="<c:url value="#"/>">About Us</a></li>
						<li class="menu"><a href="<c:url value="/mentors"/>">Mentors</a></li>
						<li class="menu"><a href="<c:url value="/questions"/>">Forum</a>
						<li class="menu"><a href="<c:url value="/resourses"/>">Resources</a></li>
						<li class="menu"><a href="<c:url value="/faqs"/>">FAQs</a></li>
						
					</ul>
				</div><!-- /.navbar-collapse -->
		</nav>
		
		 
		<nav class="navbar navbar-default navbar-lower no-margin nav-second" role="navigation">
			<div class="navbar-header">
			    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
			      <span class="sr-only">Toggle navigation</span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			      <span class="icon-bar"></span>
			    </button>
   				 <a class="navbar-brand" href="#"></a>
 			 </div>
					
		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
    			<ul class="nav navbar-nav">
						<li class="menu">Hello</li>
						<li class="menu"><c:out value="${currentLogin.name }" /></li>
						<li class="menu"><img src="${currentLogin.image }" class="img-circle" alt="${ login.name }" width="125" height="125"/></li>
						
				</ul>	
				</div>
		
</nav>

	</section>

<div class="container">
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
