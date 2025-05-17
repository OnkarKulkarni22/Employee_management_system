<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Employee Data</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

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



.registration-container {

max-width: 500px;

margin: 50px auto;

background-color: rgba(0, 0, 0, 0.6);
padding: 30px;

border-radius: 10px;

box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);

}



h2 {

text-align: center;

color: #007bff; /* Primary color for heading */

margin-bottom: 30px;

}



.form-group label {

font-weight: bold;

color: white;

}



.btn-primary {

background-color: #28a745; /* Success color for button */

border-color: #28a745;

transition: background-color 0.3s ease;

}



.btn-primary:hover {

background-color: #218838;

border-color: #1e7e34;

}



.form-control:focus {

border-color: #007bff;

box-shadow: 0 0 0 0.2rem rgba(0, 123, 255, 0.25);

}



#password-strength {

margin-top: 5px;

font-size: 0.9em;

}



.strength-weak {

color: red;

}



.strength-medium {

color: orange;

}


.strength-strong {

color: green;

}

</style>

</head>

<body>
	
	<script>
					
						alert("${message}")
						
	</script>

<div class="container registration-container">

<h2 class="mb-4">Enter Employee Details</h2>

<c:if test="${not empty error}">
        <div class="alert alert-danger" role="alert">
            ${error}
        </div>
</c:if>

<form action="employeesave" method="POST" id="registrationForm">

<div class="form-group">

<label for="name">Employee Name:</label>

<input type="text" class="form-control" id="name" name="name" placeholder="Enter your name" required>

</div>

<div class="form-group">
            <label for="email">Email Id:</label>
            <input type="email" class="form-control" id="email" name="email" placeholder="Enter your email" required>
</div>

<div class="form-group">

	<label for="salary">Salary:</label>

	<input type="tel" class="form-control" id="salary" name="salary" placeholder="Enter the salary" required>


</div>

<div class="form-group">

<label for="contact">Contact Number:</label>

<input type="tel" class="form-control" id="contact" name="contact" placeholder="Enter your contact number" required>

</div>

<div class="form-group">

<label for="contact">Username:</label>

<input type="text" class="form-control" id="username" name="username" value="${username}" readonly>

</div>

<button type="submit" class="btn btn-primary btn-block">Submit</button>

</form>

</div>

</body>

</html>