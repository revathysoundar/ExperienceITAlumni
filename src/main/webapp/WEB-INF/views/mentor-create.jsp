<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ include file="parts/head.jsp"%>
<%--
	On this page we have a form to create a mentor.
	
	Model:
	- Mentor mentor ~ a mentor with no properties set at all
 --%>
<body>

	<%@include file="parts/login-bar.jsp"%>
	<div class="container">
		<p>
			Mentoring is a process for the informal transmission of knowledge,
			guidance and the psychosocial support perceived by the recipient as
			relevant to work, career, or professional development.<br>
			<br> If you have any questions in mind regarding the the program
			our experienced and knowledgeable mentors are here to help and guide
			you throughout the course to give you better understanding and
			knowledge. They have been through all of what you are going through
			already . It is a learning and development partnership between your
			mentor with vast experience and someone who wants to learn, you. <br>
			<br> Mentorship experience and relationship will be helpful to
			achieve your goal.


		</p>
		<h1>Become a mentor</h1>
		<div>
			<form class="form-horizontal" method="post">

				<div class="form-group">
					<label class="control-label col-sm-2" for="fname">FirstName:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="firstName"
							value="${mentor.firstName}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="lname">LastName:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="lastName"
							value="${mentor.lastName}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="email">Email:</label>
					<div class="col-sm-4">
						<input type="email" class="form-control" name="email"
							value="${mentor.email}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="cname">CompanyName:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="company"
							value="${mentor.company}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="title">Job
						Title:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="title"
							value="${mentor.title}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="year">Year
						Graduated:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="year graduated"
							value="${mentor.yearGraduated}">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="desc">Description:</label>
					<div class="col-sm-4">
						<input type="text" class="form-control" name="description"
							value="${mentor.description}">
					</div>
				</div>
				<div class="form-group">

					<div class="col-sm-offset-2 col-sm-10">
						<div class="checkbox">
							<label><input type="checkbox"> I'm Available</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-">
						<button type="submit" id="button">Submit</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	<!--  Footer Starts -->
	<div class="footer">
		<div class="row">Copyright &copy; 2016 ExperienceIT Alumni. All
			rights reserved.</div>
	</div>

	<!-- Footer Ends  -->



</body>
</html>

