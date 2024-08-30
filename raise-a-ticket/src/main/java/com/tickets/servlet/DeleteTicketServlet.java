package com.tickets.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tickets.service.IticketService;
import com.tickets.service.TicketServiceImpl;

/**
 * Servlet implementation class DeleteTicketServlet
 */
@WebServlet("/DeleteTicketServlet")
public class DeleteTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteTicketServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		String ticketNo = request.getParameter("ticketNo");
		
		IticketService iticketService = new TicketServiceImpl(); 
		iticketService.deleteTicket(ticketNo);
		
		request.setAttribute("ticketNo", ticketNo);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/alltickets.jsp");
		dispatcher.forward(request, response);
	}

}
