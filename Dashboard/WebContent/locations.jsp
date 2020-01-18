<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.bridgeLabz.controller.LoginServlet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<link rel="stylesheet" href="locations.css">
<title>Top Locations</title>
</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#collapsenav">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse text-center" id="collapsenav">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a href="admin.jsp"
						class="btn btn-outline-info text-center" id="back">Back</a></li>
					<li class="nav-item"><a href="login.jsp"
						class="btn btn-outline-primary text-center" id="logout">Logout</a></li>
				</ul>
			</div>
		</nav>

		<div class="col-sm-5" style="margin-left: 10px; margin-top: 2%;">
			<table>
				<tr class="heading">
					<td>City</td>
					<td>State</td>
				</tr>
				<%
					JSONArray array = new JSONArray();
					array = (JSONArray) request.getAttribute("jsonArray");
					for (int i = 0; i < array.size(); i++) {
						JSONObject jsonObject = (JSONObject) array.get(i);
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
	</div>


</body>
</html>