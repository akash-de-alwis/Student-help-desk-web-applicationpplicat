<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel ="stylesheet" href = "css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Privacy Policy and Cookie Policy</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #7f1734;
	color: #333;
}

.container {
	max-width: 800px;
	margin: 20px auto;
	padding: 20px;
	background-color: #d1bea8;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h1 {
	color: #4f3a3c;
}

p {
	line-height: 1.6;
}

footer {
      background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent background */
      color: #fff;
      padding: 20px 0;
      text-align: center;
      position: absolute; /* Position the footer */
      bottom: 0; /* Align to the bottom of the viewport */
      width: 100%; /* Full width */
      z-index: 2; /* Ensure the footer appears on top of the image */
    }

    /* Define styles for the image */
    .bg-image {
      position: relative; /* Ensure the image container is relative */
      height: 120px; /* Set the height of the image */
      width:120%;
    }

    .bg-image img {
      width: 100%; /* Make the image fill its container */
      height: 100%; /* Make the image fill its container */
      object-fit: cover; /* Ensure the image covers the entire container */
      position: absolute; /* Position the image */
      top: 0;
      left: 0;
      z-index: 1; /* Ensure the image appears behind the footer */
    }
</style>
</head>

<meta charset="ISO-8859-1">
</head>
<body  class="p-3 m-0 border-0 bd-example m-0 border-0">

    <img src ="imgs/webbanner.png" >
    <br>
    <br>
    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="home.jsp">Help Desk</a>
        </li>
        <li class="nav-item dropdown">
            <a
                class="nav-link dropdown-toggle"
                data-bs-toggle="dropdown"
                href="#"
                role="button"
                aria-expanded="false"
                >Login</a
            >
            <ul class="dropdown-menu" style="">
                <li><a class="dropdown-item" href="#">Student Login</a></li>
                <li><a class="dropdown-item" href="#">Lecture Login</a></li>
                <li><a class="dropdown-item" href="#">Academic Officer</a></li>
                <li><a class="dropdown-item" href="login.jsp">Administration Login</a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="aboutus.jsp">About Us</a>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="contactus.jsp" colour ="#ffffff " >Connect With Us</a>
        </li>
    </ul>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    

	<div class="container">
		<h1>Privacy Policy</h1>
		<p>Welcome to the University Online Help Desk. This Privacy Policy
			explains how we collect, use, disclose, and safeguard your
			information when you interact with our online help desk services.
			Please read this Privacy Policy carefully. By using our online help
			desk, you agree to the terms of this Privacy Policy.We may collect
			personal information about you when you interact with our online help
			desk, such as when you submit support requests, chat with our support
			agents, or provide feedback. The types of personal information we may
			collect include: Name Contact information (e.g., email address, phone
			number) Student or staff ID number Details about your inquiry or
			issue IP address Browser type Cookies and usage data.We take
			reasonable measures to protect the security of your information and
			prevent unauthorized access, disclosure, or alteration. However, no
			method of transmission over the internet or electronic storage is
			100% secure.</p>

		<h1>Cookie Policy</h1>
		<p>We and our partners use technologies, such as cookies, to
			process personal data such as IP addresses, to gather statistics and
			personalize ads and content based on your interest, measure the
			performance of ads and content, and derive insights how we can
			improve our website, experience and advertisement spend. You can
			change your preferences using this cookie banner using from our
			preference center. Please read our privacy policy for additional
			details..</p>
	</div>
	 <div class="bg-image">
    <img src="imgs/webbanner.png" alt="Background Image">
    
     
    <!-- Your webpage content goes here -->
    <h1 style="position: relative; z-index: 2;"></h1>
    <p style="position: relative; z-index: 2;"></p>
  
    <!-- Footer section -->
    <footer>
      <p>&copy; 2024 Evolve University. All rights reserved.</p>
      <p>Contact: www.evolveuni.lk | Phone: +112257824</p>
    </footer>
  </div>
	
</body>


</html>