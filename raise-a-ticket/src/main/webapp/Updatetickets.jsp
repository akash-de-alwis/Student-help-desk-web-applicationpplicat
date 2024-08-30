<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import ="com.tickets.model.Ticket" %>
    <%@ page import ="com.tickets.service.IticketService" %>
    <%@ page import ="com.tickets.service.TicketServiceImpl" %>
    <%@ page import ="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
  
    body {
      background-color: #e9ecef; /* Background color equivalent to $gray-200 */
    }

    .nav-link {
      color: #ad2222 !important;
    }
    
    .slider {
    width: 100%;
    overflow: hidden;
    position: relative;
  }

  .slides {
    display: flex;
    transition: transform 0.5s ease-in-out;
  }

  .slide {
    min-width: 100%;
    overflow: hidden;
  }

  .slide img {
    width: 100%;
    display: block;
  }

  .navigation {
    position: absolute;
    bottom: 10px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
  }

  .navigation button {
    background: transparent;
    border: none;
    cursor: pointer;
    margin: 0 5px;
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
    
    .f_box{
    width: 250px;
    margin: 0 10px;
    box-shadow: 0 0 20px 2px rgba(0,0,0,0.1);
    transition: 1s;
}

.f_box img{
    display: block;
    width: 100%;
    border-radius: 20px;
}

.f_box:hover{
    transform: scale(1.3);
    z-index: 2;
    }
    
   .footer_banners{
    width: 90%;
    padding: 20px;
    margin: 100px auto;
    margin-top: 2%;
    margin-bottom: 2%;
    display: flex;
    flex-direction: row;
    justify-content: center;

}
  </style>
  
</head>
<body class="p-3 m-0 border-0 bd-example m-0 border-0">

 <img src ="imgs/webbanner.png" >
    <br>
    <br>


    <ul class="nav nav-tabs">
        <li class="nav-item">
            <a class="nav-link active" aria-current="page" href="#">Help Desk</a>
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
                <li><a class="dropdown-item" href="login.jsp">Student Login</a></li>
                <li><a class="dropdown-item" href="#">Lecture Login</a></li>
                <li><a class="dropdown-item" href="#">Academic Officer</a></li>
                <li><a class="dropdown-item" href="#">Administration Login</a></li>
            </ul>
        </li>
        <li class="nav-item">
            <a class="nav-link" href="aboutus.jsp">About Us</a>
        </li>
        
         <li class="nav-item">
            <a class="nav-link" href="#">FAQ</a>
        </li>
        
         <li class="nav-item">
            <a class="nav-link" href="privacy&cokii.jsp">Privacy Policy</a>
        </li>
        
         <li class="nav-item">
            <a class="nav-link" href="contactus.jsp">Connect with us</a>
        </li>
    </ul>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<h1 style="color:#ad2222;">Update Ticket</h1>

	<%
		String ticketNo = (String)request.getAttribute("ticketNo"); 
		IticketService iticketService = new TicketServiceImpl();
		ArrayList<Ticket> ticketList = iticketService.getTicketById(ticketNo);
		
	%>
	
		<%
			for (Ticket tickets:ticketList){
		%>	
		
		
			<form action="<%= request.getContextPath() %>/updateTicketServlet" method="post">
			
			<div class="form-floating mb-3">
		  <input type="hidden" class="form-control" id="floatingInput" name = "ticketNo" value="<%= tickets.getTicketNo() %>" >
		  <label for="floatingInput">Ticket Number</label>
		</div>
			
			
			<div class="form-floating mb-3">
		  <input type="text" class="form-control" id="floatingInput" name = "itnumber" value="<%= tickets.getItNumber() %>">
		  <label for="floatingInput">It Number</label>
		</div>
		
		
			<div class="form-floating mb-3">
		  <input type="text" class="form-control" id="floatingInput" name = "email" value="<%= tickets.geteMail() %>">
		  <label for="floatingInput">E-mail</label>
		</div>
		
		
			<div class="form-floating mb-3">
		  <input type="text" class="form-control" id="floatingInput" name = "year" value="<%= tickets.getYear() %>">
		  <label for="floatingInput">Year</label>
		</div>
		
	
			<div class="form-floating mb-3">
		  <input type="text" class="form-control" id="floatingInput" name = "semester" value="<%= tickets.getSemester() %>">
		  <label for="floatingInput">Semester</label>
		</div>
		
		
		<div class="form-floating mb-3">
		  <input type="text" class="form-control" id="floatingInput" name = "module" value="<%= tickets.getModule() %>">
		  <label for="floatingInput">Module</label>
		</div>
		
		
		<div class="form-floating mb-3">
		  <input type="text" class="form-control" id="floatingInput" name = "description" value="<%= tickets.getDescription() %>">
		  <label for="floatingInput">Description</label>
		</div>
					
					<input type="submit" class="btn btn-danger" value="update">		
			</form>
				
				
		<%
			}
		%>
		
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