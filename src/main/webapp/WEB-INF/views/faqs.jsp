<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
	<br>
	<br>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h2>FAQs</h2>
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
						<a href="#section1" data-toggle="collapse"
							data-parent="#accordion"> How will I execute the practicals </a>
					</h4>
				</div>
				<div class="panel-collapse collapse" id="section1">
					<div class="panel-body">We will help you to setup the
						applications ,IDE needed in your system with local access</div>
				</div>
			</div>




			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a href="#section2" data-toggle="collapse"
							data-parent="#accordion"> What if I miss a class </a>
					</h4>
				</div>
				<div class="panel-collapse collapse" id="section2">
					<div class="panel-body">You will never loose any lecture. You
						can choose either of the two options: 1. View the recorded session
						of the class available in your LMS. 2. You can attend the missed
						session, in any other live batch.Please note, access to the course
						material will be available for lifetime once you have enrolled
						into the course.</div>
				</div>
			</div>


			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a href="#section3" data-toggle="collapse"
							data-parent="#accordion"> Who are the instructors </a>
					</h4>
				</div>

				<div class="panel-collapse collapse" id="section3">
					<div class="panel-body">All our instructors are working
						professionals from the Industry and have solid relevant experience
						in various domains. They are subject matter experts and are
						trained for providing online training so that participants get a
						great learning experience.</div>
				</div>
			</div>

			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a href="#section4" data-toggle="collapse"
							data-parent="#accordion"> Do you provide placement assistance
							? </a>
					</h4>
				</div>

				<div class="panel-collapse collapse" id="section4">
					<div class="panel-body">Yes we are a wellestablished
						education company and lots of recruitment firms contacts us for
						our students profiles from time to time. Since there is a big
						demand for this skill, we help our certified students get
						connected to prospective employers. We also help our customers
						prepare their resumes, work on real life projects and provide
						assistance for interview preparation. Having said that, please
						understand that we don't guarantee any placements however if you
						go through the course diligently and complete the project you will
						have a very good hands on experience to work on a Live project.</div>
				</div>
			</div>

			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4 class="panel-title">
						<a href="#section5" data-toggle="collapse"
							data-parent="#accordion"> Can I get pre recorded sessions
							before attending a live class ? </a>
					</h4>
				</div>

				<div class="panel-collapse collapse" id="section5">
					<div class="panel-body">This is not provided at this time but
						we will provide you with the outline of the course and information
						regarding pre-requsites. This ensures that when you will start
						with your batch, the concepts explained during the classes will
						not be totally new to you.</div>
				</div>
			</div>

		</div>
	</div>

	<!--Footer-->

	<div class="container">
		<div class="row">
			<p align="center">
				Copyright &copy; ExperienceIt Alumni. All rights reserved. <a
					data-toggle="modal" href="#myModal">Terms and Condition</a>
			</p>
		</div>
	</div>

	<!-- Modal begins-->

	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-hidden="true">

		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h2>Terms and Conditions</h2>
				</div>

				<div class="modal-body">
					<p>
						We are a team of tech enthusiats who are determined to make
						learning easy for everyone. At edureka we believe in awesome work,
						to make sure we provide a great learning experience to our users.
						<br /> <br /> Learning is meant to be an enjoyable activity and we
						put our best to turn it into that. <br /> If you think the same
						come <a target="_blank" href="http://www.edureka.co/careers">join
							us</a>
					</p>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>


	<img src="resources/Images/ExperienceITAlumniLOGO.png">


</body>
</html>