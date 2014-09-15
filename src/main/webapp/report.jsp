<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page import="java.util.List" %>
<%@ page import="com.acelerava.domain.Question" %>
<%
	Integer grade = (Integer) request.getAttribute("grade");
%>
<head>
	<script type="text/javascript" src="../js/Chart.js"></script>
	<script type="text/javascript">
		var data = {
		    labels: ["January", "February", "March", "April", "May", "June", "July"],
		    datasets: [
		        {
		            label: "My First dataset",
		            fillColor: "rgba(220,220,220,0.2)",
		            strokeColor: "rgba(220,220,220,1)",
		            pointColor: "rgba(220,220,220,1)",
		            pointStrokeColor: "#fff",
		            pointHighlightFill: "#fff",
		            pointHighlightStroke: "rgba(220,220,220,1)",
		            data: [65, 59, 80, 81, 56, 55, 40]
		        },
		        {
		            label: "My Second dataset",
		            fillColor: "rgba(151,187,205,0.2)",
		            strokeColor: "rgba(151,187,205,1)",
		            pointColor: "rgba(151,187,205,1)",
		            pointStrokeColor: "#fff",
		            pointHighlightFill: "#fff",
		            pointHighlightStroke: "rgba(151,187,205,1)",
		            data: [28, 48, 40, 19, 86, 27, 90]
		        }
		    ]
		};
	
		var ctx = $("#myChart").get(0).getContext("2d");
		var myNewChart = new Chart(ctx).Line(data);
	</script>
</head>
<body>
	<ul class="section">
		<li>
			<h1>
				<span></span> <a>Reporte</a>
			</h1>
			
			<div class="alert-success">
				Tu &uacute;ltima calificaci&oacute;n fue: <%=grade %> 
			</div>
			
			<canvas id="myChart" width="400" height="400"></canvas>
		</li>
	</ul>
</body>