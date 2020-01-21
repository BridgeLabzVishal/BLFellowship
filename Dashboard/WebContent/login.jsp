<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Login Page</title>
<link rel="stylesheet" href="login.css">
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
	<form action="LoginServlet" method="get">
		<div class="container">
			<div class="col-md-4 offset-md-1">
				<div class="form-group">
					<div class="form-row ">
						<i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
						<h3 class="text-center">Login Form</h3>
					</div>
				</div>
				<hr>
				<div class="form-group">
					<div class="form-row">
						<i class="fa fa-envelope" aria-hidden="true"></i> <label
							class="label col-md-5 control-label text-justify">E-mail</label>
						<input type="email" name="email" class="form-control col-md-10"
							placeholder="E-mail" id="email" required>
					</div>
				</div>

				<!-- <div class="form-group">
					<div class="form-row">
						<i class="fa fa-user-o" aria-hidden="true"></i> <label
							class="label col-md-5 control-label">Username</label> 
							<input type="text" name="username" class="form-control col-md-10"
							placeholder="Username" id="username" required>
					</div>
				</div>
 -->
				<div class="form-group">
					<div class="form-row">
						<i class="fa fa-key" aria-hidden="true"></i> <label
							class="label col-md-5 control-label">Password</label> <input
							type="password" name="password" class="form-control col-md-10"
							placeholder="Password" id="password" required>
					</div>
				</div>

				<div class="form-group">
					<div class="form-row">
						<i class="fa fa-user-circle" aria-hidden="true"></i> <label
							class="label col-md-5 control-label">UserType</label>
						<div class="radiobutton">
							<input type="radio" name="radio" id="admin" value="admin">Admin <input
								type="radio" name="radio" id="user" value="user">User
						</div>
					</div>
				</div>

				<button type="submit" value="submit"
					class="btn btn-outline-primary text-center" id="submit">Submit</button>
				<button type="reset" value="reset"
					class="btn btn-outline-info text-center" id="reset">Reset</button>

				<footer>
					<h5>
						New User?<a href="registration.jsp" class="text-warning">SignUp</a>
					</h5>
					<p>Forgot your password?</p>
				</footer>

			</div>
		</div>
	</form>

</body>

</html>