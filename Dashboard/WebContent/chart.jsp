<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.bridgeLabz.repository.UserDetailsRepository"%>
<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Chart</title>
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

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.css"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>
</head>
<body>

	<div class="container" id="chart" style="margin-top:6%;">
		<canvas id="myChart"  style="border:2px solid red;padding-top:12px;padding-bottom:20px;height:400px;">
		</canvas>
	</div>
	<%
		JSONObject array = new JSONObject();
		array = UserDetailsRepository.getGenderDetails();
		
	%>
	<script>
		var data = ['<%=array.get("male")%>', '<%=array.get("female")%>'];
		var namelabel = ['Male','Female'];
		var ctx = document.getElementById('myChart');
		var myChart = new Chart(ctx, {
			type : 'pie',
			data : {
				labels : namelabel,
				datasets : [ {
					data : data,
					backgroundColor : [ 'rgba(255, 99, 132, 0.2)',
							'rgba(54, 162, 235, 0.2)',
							'rgba(255, 206, 86, 0.2)',
							'rgba(75, 192, 192, 0.2)',
							'rgba(153, 102, 255, 0.2)',
							'rgba(255, 159, 64, 0.2)' ],
					borderColor : [ 'rgba(255, 99, 132, 1)',
							'rgba(54, 162, 235, 1)', 'rgba(255, 206, 86, 1)',
							'rgba(75, 192, 192, 1)', 'rgba(153, 102, 255, 1)',
							'rgba(255, 159, 64, 1)' ],
					borderWidth : 2
				} ]
			},
			options : {
				title:{
					text:'Total Number Of Males and Females',
					display:true		
				},
				responsive: true,
				maintainAspectRatio: true
			}
		});
	</script>




</body>
</html>