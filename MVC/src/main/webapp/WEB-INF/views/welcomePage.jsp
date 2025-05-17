<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa; /* Light background fallback */
            background-image: url('images/EmployeeInfo.jpg');
            background-size: cover;
            background-position: center;
            height: 100vh;
            margin: 0;
            color: white; /* Default text color on the background */
            text-align: center;
            position: relative; /* To position the header */
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

        .nav-links {
            list-style: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: flex-end; /* Align links to the right */
        }

        .nav-links li {
            margin-left: 20px; /* Space between links */
        }

        .nav-links li a {
            color: #fff;
            text-decoration: none;
            font-size: 1.2em;
            padding: 10px 15px;
            border-radius: 5px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .nav-links li a:hover {
            background-color: #007bff; /* Highlight color on hover */
            color: #fff;
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

        h1 {
            font-size: 3em;
            margin-bottom: 30px;
            color: #fff;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        .welcome-text {
            font-size: 1.5em;
            line-height: 1.6;
            margin-bottom: 20px;
            text-shadow: 1px 1px 2px rgba(0, 0, 0, 0.5);
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
		
			
	    .footer {
				    position: absolute;
				    bottom: 0;
				    left: 0;
				    width: 100%;
				    background-color: rgba(52, 58, 64, 0.8); /* Dark background for header */
				    padding: 15px 20px;
				    display: flex;
				    justify-content: flex-end; /* Align links to the right */
				    align-items: center;
			   }		
				
    </style>
</head>
<body>
	    <div class="header">
        <ul class="nav-links">
            <li><a href="about">About Us</a></li>  
			<li><a href="contact">Contact Us</a></li>
        </ul>
    </div>
    <div class="welcome-container">
        <h1>Welcome!</h1>
        <p class="welcome-text">
            Explore our amazing platform and discover what we have to offer.
            Learn more about our company and get in touch with us today!
        </p>
        <a href="login" class="action-button">Login</a>
		<a href="register" class="action-button">Register</a>
    </div>

  
	<div class="footer">
	<div class="ac-gf-footer-legal-copyright">Copyright © 2025 Employee Inc. All rights reserved.</div>
	</div>

	<script>
	        // Optional JavaScript for more interactivity (e.g., smooth scrolling)
	        const navLinks = document.querySelectorAll('.nav-links a');

	        navLinks.forEach(link => {
	            link.addEventListener('click', function(e) {
	                // Prevent default behavior only for links starting with '#'
	                if (this.getAttribute('href').startsWith('#')) {
	                    e.preventDefault();
	                    const targetId = this.getAttribute('href').substring(1);
	                    const targetElement = document.getElementById(targetId);
	                    if (targetElement) {
	                        targetElement.scrollIntoView({ behavior: 'smooth' });
	                    } else {
	                        alert(`Section "${targetId}" not found.`);
	                    }
	                }
	            });
	        });
	    </script>


</body>
</html>