package com.tickets.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tickets.model.Ticket;
import com.tickets.service.IticketService;
import com.tickets.service.TicketServiceImpl;

/**
 * Servlet implementation class updateTicketServlet
 */
@WebServlet("/updateTicketServlet")
public class updateTicketServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public updateTicketServlet() {
        super();
        
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
		
		Ticket ticket = new Ticket();
		
		String ticketNo = request.getParameter("ticketNo");
		
		ticket.setTicketNo(ticketNo);
		ticket.setItNumber(request.getParameter("itnumber"));
		ticket.seteMail(request.getParameter("email"));
		ticket.setYear(request.getParameter("year"));
		ticket.setSemester(request.getParameter("semester"));
		ticket.setModule(request.getParameter("module"));
		ticket.setDescription(request.getParameter("description"));
		
		System.out.println(ticket.getTicketNo());
		
		IticketService iticketService = new TicketServiceImpl();
		iticketService.updateTicket(ticketNo,ticket);
		
		request.setAttribute("ticket", ticket);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/alltickets.jsp");
		dispatcher.forward(request, response);
		
	}

}
