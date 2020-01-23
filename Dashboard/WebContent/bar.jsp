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
<title>Graph</title>
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
	src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.3/Chart.min.js"></script>

<style>
img {
	width: 40px;
	border: 1px solid blueviolet;
	border-radius: 50%;
}
</style>

</head>
<body>
	<div class="container-fluid">
		<nav class="navbar navbar-expand-md bg-primary navbar-dark ">
			<div class="container">
				<a href="#" class="navbar-brand text-warning font-weight-bold"><img
					src="image/logo.png" alt="logo" /><strong>TESLA</strong></a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#collapsenavbar">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse text-center"
					id="collapsenavbar">
					<ul class="navbar-nav ml-auto ">
						<li class="nav-item"><a href="AdminServlet"
							class="nav-link text-white">Logout</a></li>
					</ul>
				</div>
			</div>
		</nav>

		<div class="row">
			<div class="col-sm-6" style="margin-left: 20%;">
				<div class="well"
					style="box-shadow: 1px 5px 8px #888888; margin-top: 8%; border: 2px solid red; padding-bottom: 20px;">
					<canvas id="barChart"></canvas>
				</div>
			</div>

			<div class="col-sm-6" style="margin-left: 20%;">
				<div class="well"
					style="box-shadow: 1px 5px 8px #888888; margin-top: 6%; border: 2px solid red; padding-bottom: 20px; margin-bottom: 10%;">
					<canvas id="pieChart" style="overflow-x: auto;"></canvas>
				</div>
			</div>
		</div>
	</div>

	<script>
	var states = [];
	var times = [];
	<%JSONArray stateArray = new JSONArray();
			stateArray = UserDetailsRepository.getUserState();
			JSONArray noOfTimes = new JSONArray();
			noOfTimes = UserDetailsRepository.getStateTimes();%> 
	<%for (int i = 0; i < stateArray.size(); i++) {%>
	states[<%=i%>] = "<%=stateArray.get(i)%>"; 
	<%}%>
	
	<%for (int i = 0; i < noOfTimes.size(); i++) {%>
	times[<%=i%>] = "<%=noOfTimes.get(i)%>"; 
	<%}%>
		
	 var canvasChart = document.getElementById('barChart').getContext('2d');
	    Chart.defaults.global.defaultFontFamily = 'sans-serif';
	    Chart.defaults.global.defaultFontSize = 14;
	    Chart.defaults.global.defaultFontColor = '#777'
	    var population = new Chart(canvasChart, {
	      type: 'bar',
	      data:{
	        labels:states,
	        datasets:[{
	          label: 'Total People',
	          data: times,
	          backgroundColor:[
	            'rgba(255, 99, 132, 0.6)',
	            'rgba(54, 162, 235, 0.6)',
	            'rgba(255, 206, 86, 0.6)',
	            'rgba(75, 192, 192, 0.6)',
	            'rgba(153, 102, 255, 0.6)'
	          ],
	          borderWidth:1,
	          borderColor:'#777',
	          hoverBorderWidth:3,
	          hoverBorderColor: '#000'
	        }]
	      },
	      options:{
	        responsive: true,
	        maintainAspectRatio: true,
	        title:{
	          display: true,
	          position: 'top',
	          text: 'Population in Differnet Area'
	        },
	        legend:{
	          display: false
	        },
	        scales: {
	          xAxes: [{
	            categoryPercentage: 1,
	            barPercentage: 0.4,
	            gridLines:{
	              display: false
	            }
	          }],
	          yAxes: [{
	            ticks: {
	              beginAtZero: true
	            }
	          }]
	        }
	      }
	    });
	</script>

	<%
		JSONObject array = new JSONObject();
		array = UserDetailsRepository.getGenderDetails();
	%>
	<script>
		var data = ['<%=array.get("male")%>', '<%=array.get("female")%>
		' ];
		var namelabel = [ 'Male', 'Female' ];
		var ctx = document.getElementById('pieChart');
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
				title : {
					text : 'Total Number Of Males and Females',
					display : true
				},
				responsive : true,
				maintainAspectRatio : true
			}
		});
	</script>

</body>
</html>