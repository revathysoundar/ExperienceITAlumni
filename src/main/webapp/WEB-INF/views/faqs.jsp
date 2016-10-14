<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
	<title>FAQs</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
	<!--<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>-->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
	
</head>
<body>

	

	<!-- Page Content-->
	<br><br><br>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="parts/head.jsp"%>
<div>
	<a href="<c:url value="/"/>">Home</a>

</div>
<head>
<title>FAQs</title>


</head>
<body>

	<!-- Navigation bar-->
	<div class="nav navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<!-- <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">-->
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
				</button>


			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
                    <li><a href="<c:url value="/"/>">Home</a></li>
					<li><a href="story.html">Mentors</a></li>
					<li><a href="course.html">About Us</a></li>
					<li><a href="signup.html">Sign Up</a></li>
					<li><a href="faq.html">Resourses</a></li>
					<li><a href="contact.html">Contact Us</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- Page Content-->
	
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h2>FAQs</h2>

				<p><h3>Wanted to learn with us, still have some queries</h3></p>

				<p>
				<h3>Come learn with us, still have some queries</h3>
				</p>

			</div>
		</div>
	</div>

	<!--Accordion-->

	<div class="container">

		

		<div class="panel-group" id="accordion">

					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a href="#section1" data-toggle="collapse" data-parent="#accordion">
								How will I execute the practicals
								</a>
							</h4>
						</div>
						<div class="panel-collapse collapse" id="section1">
							<div class="panel-body">
								We will help you to setup edureka's virtual machine in your system with local access
							</div>
						</div>
					</div>
					
				

					
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h4 class="panel-title">
							<a href="#section2" data-toggle="collapse" data-parent="#accordion">
							What if I miss a class
							</a>
						</h4>
					</div>
					<div class="panel-collapse collapse" id="section2">
						<div class="panel-body">
							 You will never lose any lecture. You can choose either of the two options:
     						 1. View the recorded session of the class available in your LMS.
      						2. You can attend the missed session, in any other live batch.Please note, access to the course material will be available for lifetime once you have enrolled into the course.
      					</div>
      				</div>
      			</div>
      		

           		<div class="panel panel-primary">
      				<div class="panel-heading">
      					<h4 class="panel-title">
      						<a href="#section3" data-toggle="collapse" data-parent="#accordion">
      						Who are the instructors
      						</a>
      					</h4>
      				</div>

      				<div class="panel-collapse collapse" id="section3">
      					<div class="panel-body">
      						All our instructors are working professionals from the Industry and have at least 10-12 yrs of relevant experience in various domains. They are subject matter experts and are trained by Edureka for providing online training so that participants get a great learning experience.
      					</div>
      				</div>
      			</div>

      			<div class="panel panel-primary">
      				<div class="panel-heading">
      					<h4 class="panel-title">
      						<a href="#section4" data-toggle="collapse" data-parent="#accordion">
      						Do you provide placement assistance ?
      						</a>
      					</h4>
      				</div>

      				<div class="panel-collapse collapse" id="section4">
      					<div class="panel-body">
      						Edureka is the largest online education company and lots of recruitment firms contacts us for our students profiles from time to time. Since there is a big demand for this skill, we help our certified students get connected to prospective employers. We also help our customers prepare their resumes, work on real life projects and provide assistance for interview preparation. Having said that, please understand that we don't guarantee any placements however if you go through the course diligently and complete the project you will have a very good hands on experience to work on a Live project.
      					</div>
      				</div>
      			</div>

      			<div class="panel panel-primary">
      				<div class="panel-heading">
      					<h4 class="panel-title">
      						<a href="#section5" data-toggle="collapse" data-parent="#accordion">
      						Can I get pre recorded sessions before attending a live class ?
      						</a>
      					</h4>
      				</div>

      				<div class="panel-collapse collapse" id="section5">
      					<div class="panel-body">
      						 Yes, this can be done. Moreover, this ensures that when you will start with your batch, the concepts explained during the classes will not be totally new to you.
      					</div>
      				</div>
      			</div>
      		
      		</div>
      	</div>

    <!--  Footer Starts -->
    <div class="container">
      <div class="row">
        <p align="center" style="padding:30px;">Copyright &copy; 2016 ExperienceIT Alumni. All rights reserved. 
	     
	    </p>
       </div>
    </div>
    
    <!-- Footer Ends  -->
	<div class="container">
		<div class="row">
			<p align="center">
				Copyright &copy; ExperienceIt Alumni. All rights reserved. 
			</p>
		</div>
	</div>

	
</body>
</html>