<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<! DOCTYPE html>

<html>

<head>
<title>List Customers</title>

</head>

<body>



	<div id="wrapper">
		<div id="header">
			<h1>List of Users to Update:</h1>
		</div>
	</div>

	<div id="content">
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>Update</th>

			</tr>

			<c:forEach var="oneCustomer" items="${customers }">


				<c:url var="updatelink" value="/customer/updateform">
					<c:param name="customerId" value="${oneCustomer.id}" />
				</c:url>



				<tr>
					<td>${oneCustomer.getFirstname() }</td>
					<td>${oneCustomer.getLastname() }</td>
					<td>${oneCustomer.getEmail() }</td>
					<td>${oneCustomer.getPassword() }</td>
					<td><a href="${updatelink }">update</a></td>



				</tr>
			</c:forEach>

		</table>

		<div>


			<button type="button" onclick="window.location.href='newuserform'">New
				Customer</button>


		</div>


	</div>

</body>

</html>