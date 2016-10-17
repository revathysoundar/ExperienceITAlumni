<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%--
	On this page we list all the mentors.
	
	Model:
	- List<Mentor> mentors
 --%>
<html>
<head>
	<%@ include file="parts/head.jsp" %>
</head>
<body>
	<%@ include file="parts/login-bar.jsp" %>
<div class="container">

<p>
Mentoring is a process for the informal transmission of knowledge, social capital, and the psychosocial support 
perceived by the recipient as relevant to work, career, or professional development;
If you have any questions in mind  regarding the the program our experienced and knowledgeable
mentors are here to  help to guide you throughout the course to give you better understanding and knowledge 
They  have been through all what you are going through. It is a learning and development partnership between your mentor  with vast 
experience and 
someone who wants to learn, you. Mentorship experience and relationship will be helpful to achieve your goal . So ask any questions you have in mind


</p>

<h1>
	 Mentors  List
</h1>
<table border="1">
	<tr>
		<th>FirstName</th><th>LastName<th>Email</th>  
	</tr>
	<c:forEach var="mentor" items="${mentors}" >
		<tr>
			<td><a href="<c:url value="/mentors/${mentor.id}"/>"><c:out value="${ mentor.firstName }"/></a></td>
			
			
			<td><c:out value="${ mentor.lastName }"/></td>
			
			
			<td><c:out value="${ mentor.email  }"/></td>
			
			
		</tr>
	</c:forEach>
</table>
<div class="action-bar">
	<a class="add-btn" href="<c:url value="/mentors/create"/>">Add a mentor</a>
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
    

</body>
</html>
