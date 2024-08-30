package com.tickets.service;

import java.util.ArrayList;

import com.tickets.model.Ticket;

public interface IticketService {

	public void addTicket(Ticket ticket);
	
	public ArrayList<Ticket> getTickets();
	
	public ArrayList<Ticket> getTicketById(String ticketNo);
	
	public void updateTicket(String ticketNo,Ticket ticket);
	
	public void deleteTicket(String ticketNo);
	
	
}

