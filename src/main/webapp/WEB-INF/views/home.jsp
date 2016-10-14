<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	
</head>
<body>
<h1>
	ExperienceIT Alumni
</h1>


<P>  Time ${serverTime}. </P>
<img src="resources/Images/ExperienceITAlumniLOGO.png">
<a href="<c:url value="/login"/>">Login</a>
<a href="<c:url value="/mentors"/>">Mentors</a>
<a href="<c:url value="/about-us"/>">About Us</a>
<a href="<c:url value="/faqs"/>">FAQs</a>
<a href="<c:url value="/resourses"/>">Resources</a>
<a href="<c:url value="/forum"/>">Forum</a>
<a href="<c:url value="/questions"/>">Questions</a>
</body>
</html>
