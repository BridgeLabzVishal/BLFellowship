<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="style1.css">
<link rel="stylesheet" href="css/bootstrap.min.css">

<title>LogIn</title>
</head>
<body>
	<form action="LoginModule" method="get">
		<div class="container">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-10">
						<h2>Login Form</h2>
					</div>
				</div>
				<hr />
				<div class="row">
					<label class="label col-md-3 control-label">E-mail</label>
					<div class="col-md-9">
						<input type="email" class="form-control" name="Email"
							placeholder="E-mail">
					</div>
				</div>

				<div class="row">
					<label class="label col-md-3 control-label">Password</label>
					<div class="col-md-9">
						<input type="password" name="Password" class="form-control"
							placeholder="Password"> <br />
					</div>
				</div>
				<div class="button1">
					<button type="submit" value="Sign" class="btn btn-primary"
						id="sign">SignIn</button>

					<button type="reset" value="Reset" class="btn btn-primary"
						id="reset">Reset</button>
				</div>
				<h6>
					New User?<a href="Registration.jsp">SignUp</a>
				</h6>
				<p>Forgot your password?</p>
			</div>
		</div>
	</form>
</body>
</html>