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
	
	 <p >To learn about the Grand Circus   please click the link below</p>
   <a href = " http://www.grandcircus.co">Click Here
   </a>
   
   
   <h3>GRAND CIRCUS DETROIT</h3>
       <p> 1570 Woodward Avenue, Level 3 Detroit, MI
		48226 (313) 338-2780     hello@grandcircus.co</p>
		
		</div>
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