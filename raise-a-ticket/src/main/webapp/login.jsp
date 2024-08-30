<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" href = "css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<style>

 body {
      background-color: #e9ecef; /* Background color equivalent to $gray-200 */
    }

    .nav-link {
      color: #ad2222 !important;
    }
</style>

<title>Insert title here</title>

<style>
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
<body class="p-3 m-0 border-0 bd-example m-0 border-0">

 <img src ="imgs/webbanner.png" >
    <br>
    <br>


    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="homepage.jsp">Help Desk</a>
        </li>
        <li class="nav-item dropdown">
            <a
                class="nav-link dropdown-toggle"
                data-bs-toggle="dropdown"
                href="#"
                role="button"
                aria-expanded="false"
                >Login</a>
            <ul class="dropdown-menu" style="">
                <li><a class="dropdown-item" href="login.jsp">Student Login</a></li>
                <li><a class="dropdown-item" href="#">Lecture Login</a></li>
                <li><a class="dropdown-item" href="#">Academic Officer</a></li>
                <li><a class="dropdown-item" href="#">Administration Login</a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="#">About Us</a>
        </li>
        
         <li class="nav-item">
            <a class="nav-link" href="#">FAQ</a>
        </li>
        
         <li class="nav-item">
            <a class="nav-link" href="#">Privacy Policy</a>
        </li>
    </ul>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    
    <br>
    <br>
    
    <img src ="imgs/Studentloging.png" >
    <br>
    <br>
    
   <!-- <form method ="post" action="login" class="row g-3">
    
  -<div class="col-md-6">
    <label for="inputEmail4" class="form-label">Email</label>
    <input type="email" class="form-control" name = "usermail" id="inputEmail4">
  </div>-->

  <form method ="post" action="login">
	<div class="form-floating mb-3">
		  <input type="email" class="form-control" id="floatingInput" name = "usermail" placeholder="User mail">
		  <label for="floatingInput">User Mail</label>
		</div>  
		
		
		<!-- <div class="col-md-6">
    <label for="inputEmail4" class="form-label">Password</label>
    <input type="password" class="form-control" name = "logpassword" id="inputEmail4">
  </div>-->
		
		
		<div class="form-floating mb-3">
		  <input type="password" class="form-control" id="floatingPassword" name = "logpassword" placeholder="Password">
		  <label for="floatingPassword">password</label>
		</div> 

		<button type="submit" class="btn btn-danger">login</button>
		
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
</form>	
</body>
</html>