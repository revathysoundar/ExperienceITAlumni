<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%--
	On this page we show the current user.
	
	Model:
	- Login login
 --%>
<html>
<head>

</head>
<body>
	
	<p>
		<label>Current User: </label>
		<c:out value="${ login.name }" />
		<label>Unique Id: </label>
		<c:out value="${ login.id }" />
		<label>Email: </label>
		<c:out value="${ login.email }" />
		
		<br /> <img src="${ login.image }" />
	</p>

</body>
</html>