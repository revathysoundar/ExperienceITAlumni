<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%--
	On this page we show the current user.
	
	Model:
	- Login login
 --%>
<html>
<head>
<link rel="stylesheet" href="resources/main.css">
<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
      <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
      <style>
      .nav-first{
      background-color: white;
    border-color: #E7E7E7;
      
      }
      .nav-second{
      background-color: black;
    border-color: #E7E7E7;
      }
	.no-margin{
	margin-bottom:0;
	 
	}
      
      </style>
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
    			<a class="navbar-brand" href="#"><img src="resources/Images/logo.png">Logo</a>
  			</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    				
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
						<li><a href="<c:url value="/mentors"/>">Mentors</a></li>
						<li><a href="<c:url value="/index"/>">About Us</a></li>
						<li><a href="<c:url value="/faqs"/>">FAQs</a></li>
						<li><a href="<c:url value="/resourses"/>">Resources</a></li>
						<li><a href="<c:url value="/logout"/>">Logout</a></li>
					</ul>
				</div>
		

	</section>
	<br>
	<p>
		<label>Current User: </label>
		<c:out value="${ login.name }" />
		<label>Unique Id: </label>
		<c:out value="${ login.id }" />
		<label>Email: </label>
		<c:out value="${ login.email }" />
		
		<br /> <img src="${ login.image }" class="img-circle" alt="${ login.name }" width="125" height="125"/>
	</p>
	
	
	<h1>Welcome</h1>

	Experience IT Alumni has come a long way from its beginnings as an
	ideal for a final project. When the four (then,Experience IT students)
	first started out, their goal (providing an additional communication
	hub for recent acceptees, and current Experience IT students), drove
	them to do more with their project; and decided to turn hard work and
	inspiration, into to an on-going way to keep students motivated,
	inspired, and connected with those who can relate to someone in their
	seat. We are thrilled to have this ideal become more than a project,
	and hope that it becomes another great asset in the Experience IT and
	Grand Circus community.
	<p>We hope that you utilize the services as much as we enjoy
		offering them to you. If you have any questions or comments ,please
		don't hasitae to contack us Thank you</p>
	</div>
	 <p >To learn about the Grand Circus   please click the link below</p>
   <a href = " http://www.grandcircus.co">Click Here
   </a>
   
   
   <h3>GRAND CIRCUS DETROIT</h3>
       <p> 1570 Woodward Avenue, Level 3 Detroit, MI
		48226 (313) 338-2780     hello@grandcircus.co</p>
	<!--  Footer Starts -->
    <div class="container">
      <div class="row">
        <p align="center" style="padding:30px;">Copyright &copy; 2016 ExperienceIT Alumni. All rights reserved. 
	     
	    </p>
       </div>
    </div>
    
    <!-- Footer Ends  -->
<script>
$('.navbar-lower').affix({
	  offset: {top: 50}
	});


</script>
</body>
</html>