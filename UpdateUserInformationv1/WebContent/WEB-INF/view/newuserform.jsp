
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div id="wrapper">
		<div id="header">
			<h2>Update /Add a Customer</h2>


		</div>

	</div>

	<div id="container">
		<h3></h3>

		<form:form action="savenewuser" modelAttribute="customer"
			method="POST">
			<table>
			<form:hidden path="id"/>
			
				<tr>
					<td>First Name:</td>
					<td><form:input path="firstname" /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><form:input path="lastname" /></td>
				</tr>
				<tr>
					<td>Email:</td>
					<td><form:input path="email" /></td>
				</tr>
				<tr>
					<td>Password:</td>
					<td><form:input path="password" /></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Save Changes" />
					</td>
				</tr>
			</table>
		</form:form>

	</div>


</body>
</html>