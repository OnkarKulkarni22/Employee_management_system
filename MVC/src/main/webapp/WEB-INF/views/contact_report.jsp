<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<title>Contact Report</title>
	<style>
		
		body {

		background-image: url('images/Customer.jpg');
		background-size: cover;
		background-position: center;
		height: 100vh;
		margin: 0;
		color: black; /* Set default font color to black */
		text-align: center;
		position: relative; /* To position the header */
		}
		
		.container {
		background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent background for content */
		padding: 40px;
		border-radius: 10px;
		box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
		max-width: 80%;
		position: absolute; /* Position it in the center */
		bottom: 0;
		left: 50%;
		transform: translate(-50%, -50%);
		}
				
		.action-button {
		display: inline-block;
		padding: 12px 25px;
		background-color: #28a745; /* Action button color */
		color: #fff;
		text-decoration: none;
		border-radius: 5px;
		font-size: 1.2em;
		transition: background-color 0.3s ease;
				}
		
		table{
			width: 50%;
			border-collapse: collapse;
			margin: 20px auto;
		}
		th, td{
			border: 1px solid #ddd;
			padding: 8px;
			text-align: center;
		}
		th{
			background-color:#f4f4f4;
		}
		
	</style>
</head>
<body>
	<h2 style="text-align: center;">Contact List</h2>
	<table>
		<thead>
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Phone</th>
				<th>Subject</th>
				<th>Message</th>
			</tr>
		</thead>
		<tbody>
				<!--Rows will be dynamically added here-->
			<c:forEach var="data" items="${contact}">
				<tr>
					<td>${data.name}</td>
					<td>${data.email}</td>
					<td>${data.phone}</td>
					<td>${data.subject}</td>
					<td>${data.message}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>

		<script>
			
			function goBack() {
					  window.history.back();
			}
			
		</script>
		
		<div class="container">
			<button onclick="goBack()" class="action-button">Home Page</button>
			<a href="admin" class="action-button">Logout</a>
		</div>
		
</body>
<html>	