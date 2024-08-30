<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel ="stylesheet" href = "css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<title>Insert title here</title>
<style>

        body {
            font-family: 'Arial', sans-serif;
            background-color: #e9ecef;
            margin: 0;
            padding: 0;
            color: #333;
        }
        
        .nav-link {
      color: #ad2222 !important;
    }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 20px;
            background-color: #d1bea8;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1, h2, p {
            text-align: center;
        }
        h1 {
            margin-top: 0;
            color: #4f3a3c;
        }
        .content {
            margin-top: 20px;
        }
        .team-members {
            display: flex;
            justify-content: center;
            align-items: center;
            flex-wrap: wrap;
            gap: 20px;
            margin-top: 30px;
        }
        .team-member {
            text-align: center;
            flex: 0 1 calc(33.33% - 20px);
        }
        .team-member img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 3px solid #007bff;
        }
        .team-member p {
            margin-top: 10px;
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
        <h1>About Us</h1>
        <div class="content">
            <p>Welcome to the Evolve University Faculty of Computing Online Helpdesk, the one-stop
location for all academic and administrative inquiries! Whether you're a student, faculty
member, or staff member, we're here to give you with the guidance and support you need to
manage your university experience smoothly. If only the registered student can access this
website.
At our Online Helpdesk, we recognize that academic life may be daunting with its many
obstacles and queries. That's why we created this website to be a single source for everything
from technical help, lecture material to academic advice. Our devoted staff of professionals is
ready to help you with course registration, IT problems, accessing campus resources and
academic purposes.
Here's what to expect from our online helpdesk:
24/7 Support: We understand that questions might occur at any moment, day or night. That is
why our helpdesk is ready 24/7 to assist you whenever you need it.</p>
            <p>To explain it simply, our University Online Helpdesk is the cornerstone of support services
for our academic community. It provides a quick and easy way to get answers to questions,
access resources, and promote a collaborative and empowered culture. Our Helpdesk is
prepared to support you at any stage of your academic and professional efforts, with a focus
on addressing the different needs of our users and an unwavering commitment to excellence.</p>

<p><b>--- FOR A BRIGHT FUTURE ---</b></p>
        </div>

 </div>
  <div class="bg-image">
    <img src="imgs/webbanner.png" alt="Background Image">
    
     
    <!-- Your webpage content goes here -->
    <h1 style="position: relative; z-index: 2;"></h1>
    <p style="position: relative; z-index: 2;">This is an example of a webpage content.</p>
  
    <!-- Footer section -->
    <footer>
      <p>&copy; 2024 Evolve University. All rights reserved.</p>
      <p>Contact: www.evolveuni.lk | Phone: +112257824</p>
    </footer>
  </div>

  
  
</body>
</html>