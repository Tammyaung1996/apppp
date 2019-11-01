<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<title>UsersList</title>
<meta charset="utf-8">

<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- 	<nav class="navbar navbar-expand-sm navbar-light bg-faded"> -->
		<a class="navbar-brand" href="index.jsp"> <img
			src="https://www.slotnite.com/images/sliders/livecasino/casino1.png"
			alt="logo" style="width: 40px;">
		</a>

		<!-- Links -->
		<ul class="navbar-nav mr-auto">
			<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
			<li class="nav-item"><a class="nav-link" href="register">Register</a></li>
			<li class="nav-item"><a class="nav-link active" href="showUsers">User
					List</a></li>
		</ul>
		<ul class="navbar-nav">
			<li class="nav-item"><span class="nav-link disabled">Welcome
					to Casino Admin App!</span></li>
		</ul>
	</nav>

	Total ${listOfUsers.size()} users found!!

	<form action="filterUsers" method="post">
		Name <input type="text" id="filterName" name="filterName">
		Contact <input type="number" id="filterContact" name="filterContact">
		Email ID <input type="text" id="filterEMail" name="filterEMail">
		<input type="submit" value="Search">
	</form>
	<br>

	<a href="showUsers"><button class="btn btn-primary">Show
			All Users</button></a>

	<c:if test="${listOfUsers.size() == 0}">
		<div class="alert alert-danger">No Users Found!!</div>
	</c:if>

	<br>
	<br>

	<c:if test="${listOfUsers.size() != 0}">

		<table width="100%" class="w3-table-all w3-centered">
			<tr>
				<th>S.No.</th>
				<th>Name</th>
				<th>DOB</th>
				<th>Contact</th>
				<th>Email</th>
				<th>Balance (in Rs.)</th>
				<th>Recharge</th>
			</tr>

			<c:forEach items="${listOfUsers}" var="eachUser">

				<tr>
					<td>i</td>
					<td>${eachUser.customerName}</td>
					<td>${eachUser.dateOfBirth}</td>
					<td>${eachUser.contactNumber}</td>
					<td>${eachUser.emailID}</td>
					<td>${eachUser.accountBalance}</td>
					<td><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalID">
  								Recharge
						</button></td>

					<!-- 				<td><a -->
					<%-- 					href="edit?employeeCode=${item.employeeCode}&hrName=${hrName}"><button --%>
					<!-- 							class="buttonEdit">Edit</button></a> <a -->
					<%-- 					href="delete?employeeName=${item.employeeName}&employeeCode=${item.employeeCode}&hrName=${hrName}"><button --%>
					<!-- 							class="buttonDelete">Delete</button></a></td> -->

				</tr>
			</c:forEach>
		</table>
	</c:if>


	<!-- Modal -->
<div class="modal fade" id="modalID" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>



</body>
</html>