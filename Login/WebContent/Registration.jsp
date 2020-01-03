<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="style.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<title>Registration</title>
</head>
<body>
	<form action="RegistrationModule" method="get">
		<div class="container">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-10">
						<h2>Registration Form</h2>
					</div>
				</div>
				<hr/>
				<div class="row">
					<label class="label col-md-3 control-label">E-mail</label>
					<div class="col-md-9">
						<input type="email" class="form-control" name="Email"
							placeholder="E-mail" required>
					</div>
				</div>
				<div class="row">
					<label class="label col-md-3 control-label">First Name</label>
					<div class="col-md-9">
						<input type="text" class="form-control" name="First Name"
							placeholder="First Name" required>
					</div>
				</div>
				<div class="row">
					<label class="label col-md-3 control-label">Last Name</label>
					<div class="col-md-9">
						<input type="text" class="form-control" name="Last Name"
							placeholder="Last Name" required>
					</div>
				</div>
				<div class="row">
					<label class="label col-md-3 control-label">Gender</label>
					<div class="col-md-9">
					<br/>
						<input type="radio" name="Radio" value="male">
						<h7>Male</h7>
						<input type="radio" name="Radio" value="female">
						<h7>Female</h7>
					</div>
				</div>
				<div class="row">
					<label class="label col-md-3 control-label">Password</label>
					<div class="col-md-9">
						<input type="password" name="Password" class="form-control"
							placeholder="Password" required> <br />
					</div>
				</div>
				<div class="row">
					<label class="label control-label col-md-3">Country</label>
					<div class="col-md-9">
						<select class="form-control" name="Country">
							<option>India</option>
							<option>America</option>
							<option>Australia</option>
							<option>South Africa</option>
							<option>UK</option>
						</select>
					</div>
				</div>
				<div class="button1">
					<button type="submit" value="submit" class="btn btn-primary" id="submit">Submit</button>

					<button type="reset" value="Reset" class="btn btn-primary"
						id="reset">Reset</button>
				</div>
			</div>
		</div>
	</form>
</body>
</html>