<html>
<head>
    <title>Admin Login Result</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
		
        body {
            /* Light background */
			 /* Light background fallback */
			background-image: url('images/Admin.jpeg');
	        background-size: cover;
			background-position: center;
			height: 100vh;
			margin: 0;
			color: white; /* Default text color on the background */
			text-align: center;
		    position: relative; /* To position the header */
        }

        .welcome-container {
            background-color: rgba(10, 10, 20, 0.3); /* Semi-transparent background for content */
            padding: 100px;
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

        .form-control:focus {
            border-color: #007bff;
            box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);
        }
    </style>

    <script>
        window.onload = function() {
            const message = "${message}";
            if (message === "Login Successful!" && !sessionStorage.getItem('loginAlertShown')) {
                alert(message);
                sessionStorage.setItem('loginAlertShown', 'true');
            }
        };

        function goBack() {
            window.history.back();
        }

        function logout() {
            sessionStorage.removeItem('loginAlertShown'); // Clear the flag on "Logout"
            window.location.href = "admin"; // Redirect back to the login page
        }
    </script>

</head>
<body>

	<!--<img src="images/Admin2.jpg">-->
	
    <div class="welcome-container">
        <h1>Welcome Admin!</h1>
        <p class="welcome-text">
            This page shows information to the admin!
        </p>
        <a href="contact_report" class="action-button">Contact Report</a>
        <a href="employee_report" class="action-button">Employee Report</a>
        <button onclick="logout()" class="action-button">Logout</button>
    </div>

</body>
</html>