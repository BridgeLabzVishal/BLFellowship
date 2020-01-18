<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="org.json.simple.JSONObject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Updation</title>

<link rel="stylesheet" href="register.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>
	
	<%
		if (session.getAttribute("Email") == null) {
			response.sendRedirect("login.jsp");
		} else {
			
	%>
	<%
		JSONObject jsonObject = (JSONObject) request.getAttribute("userdetails");
	%>
	<form action="UpdateServlet" method="get">
		<div class="container">
			<div class="col-md-11">

				<div class="form-group">
					<div class="form-row">
						<div class="form-row ">
							<i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
							<h3 class="text-center">Updation Form</h3>
						</div>
					</div>
				</div>
				<hr />

				<div class="form-group">
					<div class="form-row">
						<div class="col-md-2">
							<i class="fa fa-user-circle" aria-hidden="true"></i>First Name
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" name="firstname"
								placeholder="First Name" required
								value="<%=jsonObject.get("firstname")%>">
						</div>
						<div class="col-md-2">
							<i class="fa fa-user-circle" aria-hidden="true"></i>Last Name
						</div>
						<div class="col-md-4">
							<input type="text" class="form-control" name="lastname"
								placeholder="Last Name" required
								value="<%=jsonObject.get("lastname")%>">
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-row">
						<div class="col-md-2">
							<i class="fa fa-envelope" aria-hidden="true"></i>E-mail
						</div>
						<div class="col-md-4">
							<input type="email" class="form-control" name="email"
								placeholder="E-mail" readonly="readonly"
								value="<%=jsonObject.get("email")%>">
						</div>
						<div class="col-md-2">
							<i class="fa fa-birthday-cake" aria-hidden="true"></i> DOB
						</div>
						<div class="col-md-4">
							<input type="date" class="form-control" name="dob" required
								value="<%=jsonObject.get("dob")%>">
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-row">
						<div class="col-md-2">
							<i class="fa fa-child" aria-hidden="true"></i> Age
						</div>
						<div class="col-md-4">
							<input type="number" name="age" class="form-control"
								placeholder="Age" required value="<%=jsonObject.get("age")%>">
						</div>
						<div class="col-md-2">
							<i class="fa fa-map-marker" aria-hidden="true"></i>City
						</div>
						<div class="col-md-4">
							<input type="text" name="city" class="form-control"
								placeholder="City" required value="<%=jsonObject.get("city")%>">
						</div>
					</div>
				</div>

				<div class="form-group">
					<div class="form-row">
						<div class="col-md-2">
							<i class="fa fa-location-arrow" aria-hidden="true"></i>State
						</div>
						<div class="col-md-4">
							<input type="text" name="state" class="form-control"
								placeholder="State" required
								value="<%=jsonObject.get("state")%>">
						</div>
						<div class="col-md-2">
							<i class="fa fa-map-pin" aria-hidden="true"></i>Zip/Pin Code
						</div>
						<div class="col-md-4">
							<input type="number" name="zip" class="form-control"
								placeholder="Zip" required value="<%=jsonObject.get("zip")%>">
						</div>
					</div>
				</div>

				<div class="form-group ">
					<div class="col-md-8 offset-md-4">
						<button type="submit" value="submit"
							class="btn btn-outline-info text-center" id="submit">Submit</button>

						<button type="reset" value="Reset"
							class="btn btn-outline-primary text-center" id="reset">Reset</button>
					</div>
				</div>
				<%} %>
			</div>
		</div>
	</form>
</body>
</html>