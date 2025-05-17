<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
    <style>
        body {
			background-image: url('images/Employee1.jpg');
			background: norepeat;
			background-size: cover;
			background-position: center;
			font-family: sans-serif;
            background-color: #f8f9fa;
            padding: 20px;
            text-align: center;
            display: flex;
            flex-direction: column;
            min-height: 100vh;
			
			
			
        }

        .container {
            flex-grow: 1;
            padding: 30px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            max-width: 700px; /* Increased max-width to accommodate the map */
            margin: 20px auto;
        }

        h1, h2 {
            color: #343a40;
            margin-bottom: 20px;
        }

        .contact-form, .map-section {
            margin-bottom: 30px;
            text-align: left; /* Align form labels to the left */
        }

        .contact-form label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: black;
        }

        .contact-form input[type="text"],
        .contact-form input[type="email"],
        .contact-form textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ced4da;
            border-radius: 5px;
            box-sizing: border-box;
        }

        .contact-form textarea {
            resize: vertical;
            min-height: 100px;
        }

        .contact-form button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 1em;
            transition: background-color 0.3s ease;
        }

        .contact-form button[type="submit"]:hover {
            background-color: #0056b3;
        }

        .map-section h2 {
            text-align: center;
        }

        #map {
            height: 300px;
            width: 100%;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .social-links {
            margin-top: 30px;
            padding: 20px 0;
            background-color: #f8f9fa;
            text-align: center;
        }

        .social-links h2 {
            color: #343a40;
            margin-bottom: 15px;
        }

        .social-icons a {
            display: inline-block;
            margin: 0 15px;
            font-size: 2em;
            color: #495057;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .social-icons a:hover {
            color: #007bff; /* Highlight color */
        }

        /* Specific colors for popular platforms (optional) */
        .social-icons a.facebook:hover {
            color: #1877f2;
        }

        .social-icons a.twitter:hover {
            color: #1da1f2;
        }

        .social-icons a.instagram:hover {
            color: #c13584;
        }

        .social-icons a.linkedin:hover {
            color: #0077b5;
        }

        .social-icons a.youtube:hover {
            color: #ff0000;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Contact Us</h1>
        <p class="lead">We'd love to hear from you! Please fill out the form below or find our location on the map.</p>

        <div class="contact-form">
            <h2>Send us a message</h2>
            <form action="contactsubmit" method="POST">
                <div class="form-group">
                    <label for="name">Your Name:</label>
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
                <div class="form-group">
                    <label for="email">Your Email:</label>
                    <input type="email" class="form-control" id="email" name="email" required>
                </div>
				<div class="form-group">
				    <label for="phone">Phone:</label>
				    <input type="phone" class="form-control" id="phone" name="phone" required>
				</div>
				<div class="form-group">
                    <label for="subject">Subject:</label>
                    <input type="text" class="form-control" id="subject" name="subject">
                </div>
                <div class="form-group">
                    <label for="message">Message:</label>
                    <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Send Message</button>
            </form>
        </div>

        <div class="map-section">
            <h2>Our Location</h2>
				<center>	
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3475.52315031915!2d75.87929637475446!3d17.636810383293536!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bc5d139bb030b27%3A0x201c19481d12e42e!2sRAGHAVENDRA%20KESHAV%20KULKARNI%20D-637%20%22RAMA%20SADAN%22!5e1!3m2!1sen!2sin!4v1743789246629!5m2!1sen!2sin" 
		width="600" height="450" style="border:0;" 
		allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			 </center>      
    	</div>

    <div class="social-links">
        <h2>Connect With Us</h2>
        <div class="social-icons">
            <a href="https://www.facebook.com" target="_blank" aria-label="Facebook" class="facebook">
                <i class="fab fa-facebook-square"></i>
            </a>
            <a href="https://www.x.com" target="_blank" aria-label="Twitter" class="twitter">
                <i class="fab fa-twitter-square"></i>
            </a>
            <a href="https://www.instagram.com" target="_blank" aria-label="Instagram" class="instagram">
                <i class="fab fa-instagram-square"></i>
            </a>
            <a href="https://www.linkedin.com" target="_blank" aria-label="LinkedIn" class="linkedin">
                <i class="fab fa-linkedin"></i>
            </a>
            <a href="https://www.youtube.com" target="_blank" aria-label="YouTube" class="youtube">
                <i class="fab fa-youtube-square"></i>
            </a>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script async defer
        src="https://maps.googleapis.com/maps/api/js?key=YOUR_API_KEY&callback=initMap">
    </script>
    <script>
        function initMap() {
            // Replace with the actual latitude and longitude of your location
            const myLatLng = { lat: 20.9048, lng: 77.7485 }; // Example: Coordinates for Daryapur

            const map = new google.maps.Map(document.getElementById('map'), {
                center: myLatLng,
                zoom: 15 // Adjust zoom level as needed
            });

            new google.maps.Marker({
                position: myLatLng,
                map,
                title: 'Our Location', // Optional marker title
            });
        }
    </script>
</body>
</html>