package com.tickets.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import javax.xml.parsers.ParserConfigurationException;

import org.xml.sax.SAXException;

//import com.mysql.cj.protocol.Resultset;
import com.tickets.model.Ticket;
import com.tickets.util.CommonConstance;
import com.tickets.util.CommonUtil;
import com.tickets.util.DBconnection;
import com.tickets.util.QueryUtil;

public class TicketServiceImpl implements IticketService{
	
	private static Connection connection;
	private static Statement stmt;
	private static PreparedStatement preparedStatement;
	
	static {
		createTicketTable();
	}
	
	public static void createTicketTable() {
		
		try {
			connection = DBconnection.getDBconnection();
			
			stmt = connection.createStatement();
			stmt.execute(QueryUtil.queryByid(CommonConstance.QUERY_ID_CREATE_TICKET_TABLE));
			
		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			
			System.out.println("create table exception" + e.getMessage());
		}finally{
			
				try {
					if(connection != null) {
						connection.close();
					}
					
					if(stmt != null) {
						stmt.close();
					}
					
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}
		}
		
	}
	

	@Override
	public void addTicket(Ticket ticket) {
		
		String ticketNo = CommonUtil.genarateticketNos(getTicketNos());
		
		try {
			connection = DBconnection.getDBconnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryByid(CommonConstance.QUERY_ID_INSERT_TICKET));
			connection.setAutoCommit(false);
			
			ticket.setTicketNo(ticketNo);
			
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_ONE,ticket.getTicketNo());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_TWO,ticket.getItNumber());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_THREE,ticket.geteMail());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_FOUR,ticket.getYear());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_FIVE,ticket.getSemester());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_SIX,ticket.getModule());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_SEVEN,ticket.getDescription());
			
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
			
		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
			
		}finally{
			
			try {
				if(connection != null) {
					connection.close();
				}
				
				if(preparedStatement != null) {
					preparedStatement.close();
				}
				
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		
	}
	
	

	@Override
	public ArrayList<Ticket> getTickets() {
		
		ArrayList<Ticket> ticketList = new ArrayList<Ticket>();
		
		try {
			
			connection = DBconnection.getDBconnection();
			preparedStatement = connection.prepareStatement(QueryUtil.queryByid(CommonConstance.QUERY_ID_GET_ALL_TICKETS));
			
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				Ticket tk = new Ticket();
				tk.setTicketNo(rs.getString(CommonConstance.COLUMN_INDEX_ONE));
				tk.setItNumber(rs.getString(CommonConstance.COLUMN_INDEX_TWO));
				tk.seteMail(rs.getString(CommonConstance.COLUMN_INDEX_THREE));
				tk.setYear(rs.getString(CommonConstance.COLUMN_INDEX_FOUR));
				tk.setSemester(rs.getString(CommonConstance.COLUMN_INDEX_FIVE));
				tk.setModule(rs.getString(CommonConstance.COLUMN_INDEX_SIX));
				tk.setDescription(rs.getString(CommonConstance.COLUMN_INDEX_SEVEN));
				
				ticketList.add(tk);
			}
			
			
		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
		}finally{
			
			try {
				if(connection != null) {
					connection.close();
				}
				
				if(preparedStatement != null) {
					preparedStatement.close();
				}
				
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		return ticketList;
	}

	
	
	@Override
	public ArrayList<Ticket> getTicketById(String ticketNo) {
		
			ArrayList<Ticket> ticketList = new ArrayList<Ticket>();
			
			try {
				
				connection = DBconnection.getDBconnection();
				preparedStatement = connection.prepareStatement(QueryUtil.queryByid(CommonConstance.QUERY_ID_GET_TICKET_BY_ID));
				
				preparedStatement.setString(CommonConstance.COLUMN_INDEX_ONE, ticketNo);
				ResultSet rs = preparedStatement.executeQuery();

				
				while(rs.next()) {
					Ticket tk = new Ticket();
					tk.setTicketNo(rs.getString(CommonConstance.COLUMN_INDEX_ONE));
					tk.setItNumber(rs.getString(CommonConstance.COLUMN_INDEX_TWO));
					tk.seteMail(rs.getString(CommonConstance.COLUMN_INDEX_THREE));
					tk.setYear(rs.getString(CommonConstance.COLUMN_INDEX_FOUR));
					tk.setSemester(rs.getString(CommonConstance.COLUMN_INDEX_FIVE));
					tk.setModule(rs.getString(CommonConstance.COLUMN_INDEX_SIX));
					tk.setDescription(rs.getString(CommonConstance.COLUMN_INDEX_SEVEN));
					
					ticketList.add(tk);
				}
				
				
			} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
				System.out.println(e.getMessage());
			}finally{
				
				try {
					if(connection != null) {
						connection.close();
					}
					
					if(preparedStatement != null) {
						preparedStatement.close();
					}
					
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}
			}
			return ticketList;
		}

	@Override
	public void updateTicket(String ticketNo, Ticket ticket) {
		
			System.out.println("from outsite try at update ticket method"+ticketNo);
		
		try {
			connection = DBconnection.getDBconnection();
			
			System.out.println("from insite try at update ticket method"+ticketNo);
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryByid(CommonConstance.QUERY_ID_UPDATE_TICKET));
			connection.setAutoCommit(false);
			
			
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_ONE,ticket.getItNumber());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_TWO,ticket.geteMail());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_THREE,ticket.getYear());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_FOUR,ticket.getSemester());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_FIVE,ticket.getModule());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_SIX,ticket.getDescription());
			preparedStatement.setString(CommonConstance.COLUMN_INDEX_SEVEN,ticket.getTicketNo());
			
			preparedStatement.executeLargeUpdate();
			connection.commit();
			
		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
			
		}finally{
			
			try {
				if(connection != null) {
					connection.close();
				}
				
				if(preparedStatement != null) {
					preparedStatement.close();
				}
				
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
		}
		
	}

	@Override
	public void deleteTicket(String ticketNo) {
		
		if(ticketNo != null && !ticketNo.isEmpty()) {
			
			try {
				
				connection = DBconnection.getDBconnection();
				
				preparedStatement = connection.prepareStatement(QueryUtil.queryByid(CommonConstance.QUERY_ID_DELETE_TICKET));
				preparedStatement.setString(CommonConstance.COLUMN_INDEX_ONE, ticketNo);
				
				preparedStatement.execute();
				
			} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
				
				System.out.println(e.getMessage());
			}finally{
				
				try {
					if(connection != null) {
						connection.close();
					}
					
					if(preparedStatement != null) {
						preparedStatement.close();
					}
					
				} catch (SQLException e) {
					System.out.println(e.getMessage());
				}
			}
		}
		
	}
	
	public ArrayList<String> getTicketNos(){
		
		ArrayList<String> Nos = new ArrayList<String>();
		
		try {
			
			connection = DBconnection.getDBconnection();
			
			preparedStatement = connection.prepareStatement(QueryUtil.queryByid(CommonConstance.QUERY_ID_GET_TICKET_NOS));
		
			ResultSet rs = preparedStatement.executeQuery();
			
			while(rs.next()) {
				Nos.add(rs.getString(CommonConstance.COLUMN_INDEX_ONE));
			}
			
		} catch (SQLException | SAXException | IOException | ParserConfigurationException | ClassNotFoundException e) {
			System.out.println(e.getMessage());
			
		}finally{
			
			try {
				if(connection != null) {
					connection.close();
				}
				
				if(preparedStatement != null) {
					preparedStatement.close();
				}
				
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}
	}
		return Nos;
	}
}
