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
perceived by the recipient as relevant to work, career, or professional development.<br><br>
If you have any questions in mind  regarding the the program our experienced and knowledgeable
mentors are here to  help to guide you throughout the course to give you better understanding and knowledge 
They  have been through all what you are going through. It is a learning and development partnership between your mentor  with vast 
experience and 
someone who wants to learn, you.
<br><br> Mentorship experience and relationship will be helpful to achieve your goal. 


</p>

<h1>
	 Mentors  List
</h1>
<div class="container">
  <div class="table-responsive">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Firstname</th>
        <th>Lastname</th>
        <th>Email</th>
      </tr>
    </thead>
    <c:forEach var="mentor" items="${mentors}" >
    <tbody>
      <tr>
        <td><a href="<c:url value="/mentors/${mentor.id}"/>"><c:out value="${ mentor.firstName }"/></a></td>
			
			
			<td><a href="<c:url value="/mentors/${mentor.id}"/>"><c:out value="${ mentor.lastName }"/></a></td>
			
			
			<td><a href="<c:url value="/mentors/${mentor.id}"/>"><c:out value="${ mentor.email  }"/></a></td>
			
      </tr>
      
    </tbody>
    </c:forEach>
  </table>
  </div>
</div>

<div class="action-bar">
<p>
	Want to ba a Mentor?<a class="add-btn" href="<c:url value="/mentors/create"/>">Become a Mentor</a></p>
</div>


</div>
<!--  Footer Starts -->
    <div class="footer">
      <div class="row">
        Copyright &copy; 2016 ExperienceIT Alumni. All rights reserved. 
	     
	   
       </div>
    </div>
    
    <!-- Footer Ends  -->
    

</body>
</html>
