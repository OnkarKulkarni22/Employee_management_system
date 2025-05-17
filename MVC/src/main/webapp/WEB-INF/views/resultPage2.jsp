<html>
	<head>
		<title>Employee Data</title>
		
		<style>
			
			body {

			background-color: #f8f9fa; /* Light background */
			background-image: url('images/Employee1.jpg');
			background: norepeat;
			background-size: cover;
			background-position: center;
			display: flex;
			justify-content: center;
			align-items: center;
			height: 100vh;
			margin: 0;
			color: white; /* Default text color on the background */
			position: relative;

			}
			
		
			.header {
			            position: absolute;
			            top: 0;
			            left: 0;
			            width: 100%;
			            background-color: rgba(52, 58, 64, 0.8); /* Dark background for header */
			            padding: 15px 20px;
			            display: flex;
			            justify-content: flex-end; /* Align links to the right */
			            align-items: center;
			}
			
			.welcome-container {
			            background-color: rgba(0, 0, 0, 0.6); /* Semi-transparent background for content */
			            padding: 40px;
			            border-radius: 10px;
			            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
			            max-width: 80%;
			            position: absolute; /* Position it in the center */
			            top: 50%;
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
					
		    .action-button:hover {
					    background-color: #218838;
			}

				
		</style>
	</head>
	<body>
				
		<script>
			
			setTimeout(()=> {
						alert('Employee Added Successfully!');
					},30)
					
		</script>
		
		<div class= "welcome-container">
		
			<h1>${message}</h1>
			
		
		
		</div>
		
		<div class="header">
		    <a href="newemp?username=${param.username}" class="action-button">Add new Employee Details</a>            
		    <a href="login" class="action-button">Logout</a>
		</div>
				
	</body>
<html>	