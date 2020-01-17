<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="com.bridgeLabz.controller.LoginServlet" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title></title>
<!-- Bootstrap CSS CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
	<div class="container">
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
						JSONObject jsonObject = (JSONObject)array.get(i);
			%>
			<tr>
				<td><%=jsonObject.get("firstname")%></td>
				<td><%=jsonObject.get("lastname")%></td>
				<td><%=jsonObject.get("email")%></td>
				<td><%=jsonObject.get("password")%></td>
				<td><%=jsonObject.get("gender")%></td>
				<td><%=jsonObject.get("dob")%></td>
				<td><%=jsonObject.get("age")%></td>
				<td><%=jsonObject.get("city")%></td>
				<td><%=jsonObject.get("state")%></td>
				
			</tr>
			<%
				}
			%>
		</table>
	</div>
</body>
</html>
