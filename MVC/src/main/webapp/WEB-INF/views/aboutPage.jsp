<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Employee Inc.</title>
    <style>
        body {
            font-family: sans-serif;
            background-color: yellow;
            background-image: url('images/EmployeeInfo.jpg'); /* Replace with your actual image path */
            background-size: cover;
            background-position: center;
            min-height: 100vh; /* Ensure the background covers the entire viewport height */
            margin: 0;
            color: black; /* Default text color on the background */
            text-align: center;
            position: relative;
            padding-bottom: 60px; /* Space for the fixed footer */
            box-sizing: border-box; /* Include padding in the element's total width and height */
        }

        .header {
            position: fixed; /* Fixed header at the top */
            top: 0;
            left: 0;
            width: 100%;
            background-color: rgba(52, 58, 64, 0.8); /* Dark background for header with transparency */
            padding: 15px 20px;
            display: flex;
            justify-content: flex-end; /* Align links to the right */
            align-items: center;
            z-index: 100; /* Ensure header stays on top */
        }

        .welcome-container {
            background-color: rgba(224, 255, 255, 0.9); /* Cyan with slight transparency */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.3);
            max-width: 80%;
            margin: 80px auto 20px; /* Add top margin to avoid overlap with header, and some bottom margin */
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        .about-text {
            font-size: 1.1em;
            line-height: 1.6;
            color: #555;
            text-align: left;
            margin-bottom: 30px;
        }

        .section-title {
            color: #007bff; /* A nice blue color */
            margin-top: 30px;
            margin-bottom: 15px;
            text-align: center;
            border-bottom: 2px solid #007bff;
            padding-bottom: 5px;
        }

        .team-member {
            display: inline-block;
            margin: 20px;
            text-align: center;
        }

        .team-member img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
            margin-bottom: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .footer {
            position: fixed; /* Fixed footer at the bottom */
            bottom: 0;
            left: 0;
            width: 100%;
            background-color: rgba(0, 128, 0, 0.8); /* Green with transparency */
            padding: 15px 20px;
            display: flex;
            justify-content: center; /* Center the copyright text */
            align-items: center;
            color: white;
            z-index: 100; /* Ensure footer stays on top */
        }

        .footer a {
            color: white;
            text-decoration: none;
            margin-left: 15px;
        }

        .footer a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="header">
        </div>

    <div class="welcome-container">
        <h1>About Employee Inc.</h1>
        <p class="about-text">
            Welcome to Employee Inc.! We are a dynamic and innovative organization dedicated to [briefly describe your organization's mission or purpose]. Our team is passionate about [mention key values or areas of focus].
        </p>

        <h2 class="section-title">Our Story</h2>
        <p class="about-text">
            Founded in [Year], Employee Inc. started with a vision to [explain the origin story or initial goal]. Over the years, we have grown and evolved, adapting to the changing landscape while staying true to our core principles. We are proud of our journey and the impact we have made in [mention your industry or area of impact].
        </p>

        <h2 class="section-title">Our Mission</h2>
        <p class="about-text">
            Our mission is to clearly state your organization's mission statement. We strive to mention key actions or goals related to your mission.
        </p>

        <h2 class="section-title">Our Values</h2>
        <p class="about-text">
            We are guided by the following core values:
            <ul>
                <li>Innovation: We embrace new ideas and constantly seek better ways to do things.</li>
                <li>Collaboration: We believe in the power of teamwork and working together to achieve common goals.</li>
                <li>Integrity: We operate with honesty, transparency, and ethical practices.</li>
                <li>Customer Focus: We are committed to understanding and meeting the needs of our customers.</li>
                <li>Excellence: We strive for the highest standards in everything we do.</li>
            </ul>
        </p>

        <h2 class="section-title">Meet Our Team</h2>
        <div class="team-container">
            <div class="team-member">
                <img src="images/Onkar.jpg" alt="Team Member 1">
                <h3>Onkar Kulkarni</h3>
                <p>CEO & Founder</p>
            </div>
            <div class="team-member">
                <img src="images/team-member-2.jpg" alt="Team Member 2">
                <h3>Swati Kulkarni</h3>
                <p>Head of Marketing</p>
            </div>
            <div class="team-member">
                <img src="images/team-member-3.jpg" alt="Team Member 3">
                <h3>Raghavendra Kulkarni</h3>
                <p>Head of Finance</p>
            </div>
            </div>
    </div>

    <div class="footer">
        <div class="ac-gf-footer-legal-copyright">Copyright © 2025 Employee Inc. All rights reserved.</div>
    </div>

    </body>
</html>