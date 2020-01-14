<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Admin</title>

<!-- Bootstrap CSS CDN -->
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

<!-- Our Custom CSS -->
<link rel="stylesheet" href="admin.css">
</head>

<body>
	<div class="wrapper">

		<!-- Sidebar Holder -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<h3>Dashboard</h3>
			</div>
			<ul class="list-unstyled components">
				<li><a href="#"><i class="fa fa-home" aria-hidden="true"></i>Home</a>
				</li>
				<li class="active"><a href="#homeSubmenu"
					data-toggle="collapse" aria-expanded="false"
					class="dropdown-toggle"> <i class="fa fa-users"
						aria-hidden="true"></i>Registered Users
				</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="#"><i class="fa fa-history"
								aria-hidden="true"></i> History</a></li>
						<li><a href="#"><i class="fa fa-location-arrow"
								aria-hidden="true"></i> Top Locations</a></li>
						<li><a href="#"><i class="fa fa-venus-mars"
								aria-hidden="true"></i> Gender Wise</a></li>
						<li><a href="#"><i class="fa fa-male" aria-hidden="true"></i>
								Age Wise</a></li>
					</ul></li>
				<li><a href="#"><i class="fa fa-user-circle-o"
						aria-hidden="true"></i> Latest Registered Users </a></li>

				<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i>
						New User</a></li>
				<li><a href="#"><i class="fa fa-phone" aria-hidden="true"></i>
						Contact</a></li>
			</ul>
		</nav>

		<!-- Page Content Holder -->
		<div id="content">
			<nav class="navbar navbar-expand-lg navbar-light bg-light">
				<div class="container-fluid">
					<button type="button" id="sidebarCollapse" class="navbar-btn">
						<span></span> <span></span> <span></span>
					</button>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#collapsenav">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse text-center" id="collapsenav">
						<ul class="navbar-nav ml-auto">
							<li class="nav-item dropdown"><a href="#"
								class="nav-link dropdown-toggle" data-toggle="dropdown"> <img
									src="image/avatar.png" alt="Profile_Pic" /> User
							</a>
								<ul
									class="dropdown-menu dropdown-menu-right bg-info text-justify">
									<li dropdown-item><a href="#" class="dropdown-item"><i
											class="fa fa-stack-exchange" aria-hidden="true"></i> Profile</a>
									</li>
									<li dropdown-item><a href="#" class="dropdown-item"><i
											class="fa fa-pencil" aria-hidden="true"></i> Update</a></li>
									<li dropdown-item><a href="#" class="dropdown-item"><i
											class="fa fa-trash" aria-hidden="true"></i> Delete</a></li>
									<li dropdown-item><a href="#" class="dropdown-item"><i
											class="fa fa-sign-out" aria-hidden="true"></i> Logout</a></li>
									<li dropdown-item><a href="#" class="dropdown-item"> <i
											class="fa fa-sliders" aria-hidden="true"></i> Setting
									</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>

			<h2>Collapsible Sidebar Using Bootstrap 4</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum.</p>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum.</p>

			<div class="line"></div>

			<h2>Lorem Ipsum Dolor</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum.</p>

			<div class="line"></div>

			<h2>Lorem Ipsum Dolor</h2>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum.</p>

			<div class="line"></div>

			<h3>Lorem Ipsum Dolor</h3>
			<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
				do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
				enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
				ut aliquip ex ea commodo consequat. Duis aute irure dolor in
				reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
				pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
				culpa qui officia deserunt mollit anim id est laborum.</p>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
				$(this).toggleClass('active');
			});
		});
	</script>
</body>
</html>