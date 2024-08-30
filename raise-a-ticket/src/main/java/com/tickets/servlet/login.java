package com.tickets.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tickets.model.userlogin;
import com.tickets.service.loginService;


@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
    public login() {
        super();
       
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		com.tickets.model.userlogin ul = new com.tickets.model.userlogin();
		ul.setUsermail(request.getParameter("usermail"));
		ul.setLogpassword(request.getParameter("logpassword"));
		
		
		com.tickets.service.loginService service = new com.tickets.service.loginService();
		boolean status = service.validate(ul);
		
		if(status) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("studentdashboard.jsp");
			dispatcher.forward(request,response);
		}
		
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("homepage.jsp");
			dispatcher.forward(request,response);
		}
		
	}

}
