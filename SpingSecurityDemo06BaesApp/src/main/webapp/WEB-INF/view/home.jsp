<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Home page</title>
</head>
<body>

	<h2>Company Home page</h2>
	<hr>

	<p>Welcome to company home page!
	<p>
	<hr>

	<p>
		User:
		<security:authentication property="principal.username" />
		<br> <br> Role(s) :
		<security:authentication property="principal.authorities" />
	<p>
	


	<security:authorize access="hasRole('MANAGER')">
		<!-- add a lik to point to leaders this is for the managers -->
		<p>
			<a href="${pageContext.request.contextPath}/leaders">Leadership Meeting</a> (Only for Manager peeps)
		<p>
	</security:authorize>


	<security:authorize access="hasRole('ADMIN')">
		<!-- add a link to pint to system this is for the admins -->
		<p>
			<a href="${pageContext.request.contextPath}/systems">IT Systems Meetings</a> (Only for Admin peeps)
		<p>
	</security:authorize>
	<hr>



	<!-- add logout button -->

	<form:form action="${pageContext.request.contextPath}/logout" method="POST">

		<input type="submit" value="Logout" />

	</form:form>



</body>
</html>