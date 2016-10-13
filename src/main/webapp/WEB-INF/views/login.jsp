<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<link rel="stylesheet" href="resources/bootstrap/css/bootstrap.min.css">
	<script src="resources/bootstrap/js/bootstrap.min.js"></script>
<title>Login</title>
</head>
<body>
	<h1>Login with Slack</h1>
	<form class="form-horizontal" role="form">
		<div class="form-group">
						<label class="control-label col-sm-2" for="email">Email</label>
						<div class="col-sm-6">
							<input type="email" class="form-control" id="email" placeholder="Enter Email">
						</div>
					</div>

					<div class="form-group">
						<label class="control-label col-sm-2" for="pwd">Password</label>
						<div class="col-sm-6">
							<input type="password" class="form-control" id="pwd" placeholder="Password">
						</div>
					</div>
					<div class="form-group" style="padding:30px;">
					<a href="https://slack.com/oauth/authorize?scope=identity.basic,identity.avatar,identity.email&client_id=4975543103.90426640038">	
							<img src="resources/Images/sign_in_with_slack.png"></a>
					</div>
	</form>
</body>
</html>