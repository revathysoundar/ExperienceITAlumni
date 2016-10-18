<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%--
	On this page we show the current user.
	
	Model:
	- Login login
 --%>
<html>
<head>
	<%@ include file="parts/head.jsp" %>
</head>
<body>
	
	<%@ include file="parts/login-bar.jsp" %>
	 <div class="container">  
	<h1 style="color:"#bdb76b;">Welcome</h1>
<p>
	Experience IT Alumni has come a long way from its beginnings as an
	idea for a final project. When the four Experience IT students
	first started out, their goal (providing an additional communication
	hub for recent acceptance, and current Experience IT students), drove
	them to do more with their project; and decided to turn hard work and
	inspiration, into an on-going way to keep students motivated,
	inspired, and connected with those who can relate to someone in their
	seat.<br><br> We are thrilled to have this idea become more than a project,
	and hope that it becomes another great asset in the Experience IT and
	Grand Circus community.
	We hope that you utilize the services as much as we enjoy
		offering them to you. If you have any questions or comments ,please
		don't hesitate to contact us. <br><br>
	To learn about the Grand Circus please click the link below
   <a href = " http://www.grandcircus.co">Click Here
   </a>
   </p>
   
   <h3>GRAND CIRCUS DETROIT</h3>
       <p> 1570 Woodward Avenue, Level 3 Detroit, MI
		48226 (313) 338-2780     hello@grandcircus.co</p>
		
		</div>
	<!--  Footer Starts -->
    <div class="footer">
      <div class="row">
        Copyright &copy; 2016 ExperienceIT Alumni. All rights reserved.
	     
	    
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