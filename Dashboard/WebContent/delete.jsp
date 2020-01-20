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
	<form action="DeleteServlet" method="get" id="del">
		<div class="container-fluid" >
			<div class="col-md-8 offset-md-1">
				<div class="form-group">
					<div class="form-row ">
						<i class="fa fa-pencil-square-o fa-2x" aria-hidden="true"></i>
						<h3 class="text-center">Delete Form</h3>
					</div>
				</div>
				<hr>
				<div class="form-group">
					<div class="form-row">
						<i class="fa fa-envelope" aria-hidden="true"></i> <label
							class="label col-md-5 control-label text-justify">E-mail</label>
						<input type="email" name="email" class="form-control col-md-10"
							placeholder="Email" required>
					</div>
				</div>
				
				<button type="submit" value="submit"
					class="btn btn-outline-primary text-center" id="submit" style="margin-left:20px;">Submit</button>
				<button type="reset" value="reset"
					class="btn btn-outline-info text-center" id="reset" style="margin-left:20px;">Reset</button>
			</div>
		</div>
	</form>

</body>
>
</html>