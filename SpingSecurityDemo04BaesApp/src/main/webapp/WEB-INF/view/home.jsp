<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Home page</title>
</head>
<body>
	
	<h2>Company Home page</h2>
	<hr>
	
	<p>
	Welcome to company home page!
	<p>
	
	
	<!-- add logout button -->
	
	<form:form action="${pageContext.request.contextPath}/logout" method="POST">
	
	<input type="submit" value="Logout" />
	
	</form:form>



</body>
</html>