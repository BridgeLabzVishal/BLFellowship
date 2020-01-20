<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.bridgeLabz.controller.LoginServlet"%>
<%@page import="com.bridgeLabz.repository.UserDetailsRepository"%>
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

	<%
		String email = (String) session.getAttribute("Email");
		if (session.getAttribute("Email") == null && session.getAttribute("Password") == null)
			response.sendRedirect("login.jsp");
	%>
	<div class="wrapper">

		<!-- Sidebar -->
		<nav id="sidebar">
			<div class="sidebar-header">
				<img src="image/logo.png" alt="logo" /><strong>TESLA</strong>
			</div>
			<ul class="list-unstyled components">
				<li><a href="#" id="home"><i class="fa fa-home"
						aria-hidden="true"></i>Home</a></li>
				<li class="active"><a href="#homeSubmenu"
					data-toggle="collapse" aria-expanded="false"
					class="dropdown-toggle"> <i class="fa fa-users"
						aria-hidden="true"></i>Registered Users
				</a>
					<ul class="collapse list-unstyled" id="homeSubmenu">
						<li><a href="#" id="allusers"><i class="fa fa-history"
								aria-hidden="true"></i> All Users</a></li>
						<li><a href="#" id="locations"><i
								class="fa fa-location-arrow" aria-hidden="true"></i> Top
								Locations</a></li>
						<li><a href="#" id="genderWise"><i
								class="fa fa-venus-mars" aria-hidden="true"></i> Gender Wise</a></li>
						<li><a href="#"><i class="fa fa-male" aria-hidden="true"></i>
								Age Wise</a></li>
					</ul></li>
				<li><a href="#" id="latest"><i class="fa fa-user-circle-o"
						aria-hidden="true"></i> Latest Registered Users </a></li>
				<li><a href="registration.jsp"><i class="fa fa-user"
						aria-hidden="true"></i> New User</a></li>
				<li><a href="#" id="contact"><i class="fa fa-phone"
						aria-hidden="true"></i> Contact</a></li>
			</ul>
		</nav>

		<!-- Page Content Holder -->
		<div id="content">
			<nav class="navbar navbar-expand-sm navbar-light bg-light">
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
									<li dropdown-item><a
										href="EditServlet?email=<%=session.getAttribute("Email")%>"
										class="dropdown-item"><i class="fa fa-pencil"
											aria-hidden="true"></i>Update</a></li>
									<li dropdown-item><a href="#" class="dropdown-item"
										id="delete"><i class="fa fa-trash" aria-hidden="true"></i>
											Delete</a></li>
									<li dropdown-item><a href="AdminServlet"
										class="dropdown-item"><i class="fa fa-sign-out"
											aria-hidden="true"></i> Logout</a></li>
									<li dropdown-item><a href="#" class="dropdown-item"> <i
											class="fa fa-sliders" aria-hidden="true"></i> Setting
									</a></li>
								</ul></li>
						</ul>
					</div>
				</div>
			</nav>

			<div class="line">

				<h2>Collapsible Sidebar Using Bootstrap 4</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum.</p>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed
					do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
					enim ad minim veniam, quis nostrud exercitation ullamco laboris
					nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in
					reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
					pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
					culpa qui officia deserunt mollit anim id est laborum.</p>

			</div>
			<div class="col-sm-12" style="margin-left: 6px; margin-top: 4%;"
				id="users">
				<table>
					<tr class="heading">
						<td>First Name</td>
						<td>Last Name</td>
						<td>Email</td>
						<td>Gender</td>
						<td>DOB</td>
						<td>Age</td>
						<td>City</td>
						<td>State</td>
						<td>Zip</td>
					</tr>
					<%
						JSONArray array = new JSONArray();
						array = (JSONArray) request.getAttribute("jsonArray");
						for (int i = 0; i < array.size(); i++) {
							JSONObject jsonObject = (JSONObject) array.get(i);
					%>
					<tr>
						<td><%=jsonObject.get("firstname")%></td>
						<td><%=jsonObject.get("lastname")%></td>
						<td><%=jsonObject.get("email")%></td>
						<td><%=jsonObject.get("gender")%></td>
						<td><%=jsonObject.get("dob")%></td>
						<td><%=jsonObject.get("age")%></td>
						<td><%=jsonObject.get("city")%></td>
						<td><%=jsonObject.get("state")%></td>
						<td><%=jsonObject.get("zip")%></td>

					</tr>
					<%
						}
					%>
				</table>
			</div>

			<div class="col-sm-12" style="margin-left: 6px; margin-top: 3%;"
				id="gender">
				<table class="male">
					<tr class="heading">
						<td>First Name</td>
						<td>Last Name</td>
						<td>Email</td>
						<td>Gender</td>
						<td>DOB</td>
						<td>Age</td>
						<td>City</td>
						<td>State</td>
						<td>Zip</td>
					</tr>
					<%
						String genMale = "male";
						JSONArray genderMale = new JSONArray();
						genderMale = array;
						for (int i = 0; i < genderMale.size(); i++) {
							JSONObject jsonObject = (JSONObject) genderMale.get(i);
							if (jsonObject.get("gender").equals(genMale)) {
					%>
					<tr>
						<td><%=jsonObject.get("firstname")%></td>
						<td><%=jsonObject.get("lastname")%></td>
						<td><%=jsonObject.get("email")%></td>
						<td><%=jsonObject.get("gender")%></td>
						<td><%=jsonObject.get("dob")%></td>
						<td><%=jsonObject.get("age")%></td>
						<td><%=jsonObject.get("city")%></td>
						<td><%=jsonObject.get("state")%></td>
						<td><%=jsonObject.get("zip")%></td>

					</tr>
					<%
						}
						}
					%>
				</table>
				<table class="female">
					<tr class="heading">
						<td>First Name</td>
						<td>Last Name</td>
						<td>Email</td>
						<td>Gender</td>
						<td>DOB</td>
						<td>Age</td>
						<td>City</td>
						<td>State</td>
						<td>Zip</td>
					</tr>
					<%
						String genFemale = "female";
						JSONArray genderFemale = new JSONArray();
						genderFemale = array;
						for (int i = 0; i < genderFemale.size(); i++) {
							JSONObject jsonObject = (JSONObject) genderFemale.get(i);
							if (jsonObject.get("gender").equals(genFemale)) {
					%>
					<tr>
						<td><%=jsonObject.get("firstname")%></td>
						<td><%=jsonObject.get("lastname")%></td>
						<td><%=jsonObject.get("email")%></td>
						<td><%=jsonObject.get("gender")%></td>
						<td><%=jsonObject.get("dob")%></td>
						<td><%=jsonObject.get("age")%></td>
						<td><%=jsonObject.get("city")%></td>
						<td><%=jsonObject.get("state")%></td>
						<td><%=jsonObject.get("zip")%></td>

					</tr>
					<%
						}
						}
					%>
				</table>
			</div>

			<div class="col-sm-12" style="margin-left: 10px; margin-top: 12%;"
				id="toplocations">
				<table>
					<tr class="heading">
						<td>City</td>
						<td>State</td>
					</tr>
					<%
						JSONArray location = UserDetailsRepository.topLocations();
						for (int i = 0; i < location.size(); i++) {
							JSONObject jsonObject = (JSONObject) location.get(i);
					%>
					<tr>
						<td><%=jsonObject.get("city")%></td>
						<td><%=jsonObject.get("state")%></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>

			<div class="col-sm-12" style="margin-left: 6px; margin-top: 4%;"
				id="lastRegister">
				<table>
					<tr class="heading">
						<td>First Name</td>
						<td>Last Name</td>
						<td>Email</td>
						<td>Gender</td>
						<td>DOB</td>
						<td>Age</td>
						<td>City</td>
						<td>State</td>
						<td>Zip</td>
					</tr>
					<%
						JSONArray register = new JSONArray();
						register = UserDetailsRepository.lastRegistered();
						for (int i = 0; i < 5; i++) {
							JSONObject jsonObject = (JSONObject) register.get(i);
					%>
					<tr>
						<td><%=jsonObject.get("firstname")%></td>
						<td><%=jsonObject.get("lastname")%></td>
						<td><%=jsonObject.get("email")%></td>
						<td><%=jsonObject.get("gender")%></td>
						<td><%=jsonObject.get("dob")%></td>
						<td><%=jsonObject.get("age")%></td>
						<td><%=jsonObject.get("city")%></td>
						<td><%=jsonObject.get("state")%></td>
						<td><%=jsonObject.get("zip")%></td>
					</tr>
					<%
						}
					%>
				</table>
			</div>

			<section class="contact" style="margin-top: 20%; margin-left: 10px;">
				<div class="container text-center">
					<h2>CONTACT US</h2>
					<address>
						<strong>Contact Number :</strong> <br> +91 070459 48949 <br>
						<strong>Mail Us :</strong> <br> contactus@bridgelabz.com <br>
						<strong>Branch Office :</strong> <br> No 42, 15th Cross &
						14th Main Road<br> HSR Layout Sector 4 Opposite To HSR BDA
						Complex,<br> behind Kumarakom restaurant, Bengaluru, <br>
						Karnataka 560102
					</address>
				</div>
			</section>
			
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$("#users").hide();
			$("#gender").hide();
			$('.contact').hide();
			$('#toplocations').hide();
			$('#lastRegister').hide();
			$('#sidebarCollapse').on('click', function() {
				$('#sidebar').toggleClass('active');
				$(this).toggleClass('active');
			});
			$('#allusers').on('click', function() {
				$(".line").hide();
				$("#gender").hide();
				$('.contact').hide();
				$('#toplocations').hide();
				$('#lastRegister').hide();
				$("#users").show();
			});
			$('#genderWise').on('click', function() {
				$(".line").hide();
				$("#users").hide();
				$('.contact').hide();
				$('#toplocations').hide();
				$('#lastRegister').hide();
				$("#gender").show();
			});
			$('#home').on('click', function() {
				$('#users').hide();
				$('#gender').hide();
				$('.contact').hide();
				$('#toplocations').hide();
				$('#lastRegister').hide();
				$('.line').show();
			});
			$('#delete').on('click', function() {
				$('#users').hide();
				$('.line').load('delete.jsp #del');
			});
			$('#contact').on('click', function() {
				$(".line").hide();
				$("#gender").hide();
				$('#users').hide();
				$('#toplocations').hide();
				$('#lastRegister').hide();
				$('.contact').show();
			});
			$('#locations').on('click', function() {
				$(".line").hide();
				$("#gender").hide();
				$('#users').hide();
				$('.contact').hide();
				$('#lastRegister').hide();
				$('#toplocations').show();
			});
			$('#latest').on('click', function() {
				$(".line").hide();
				$("#gender").hide();
				$('#users').hide();
				$('.contact').hide();
				$('#toplocations').hide();
				$('#lastRegister').show();
			});

		});
	</script>

</body>
</html>