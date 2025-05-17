<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Submission</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
            text-align: center;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
        }
        .btn-back {
            margin-top: 20px;
        }
        .success-message {
            color: #28a745;
            font-size: 1.2em;
        }
        .error-message {
            color: #dc3545;
            font-size: 1.2em;
        }
    </style>
</head>
<body>
	<div class="container">
	        <div class="${message.contains('Thank you') ? 'success-message' : 'error-message'}">
	            <h2>${message}</h2>
	        </div>
	        <a href="${pageContext.request.contextPath}/contact" class="btn btn-primary btn-back">Back to Contact Page</a>
	    </div>
	</body>
	</html>