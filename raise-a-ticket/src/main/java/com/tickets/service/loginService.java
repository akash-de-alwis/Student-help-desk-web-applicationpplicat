package com.tickets.service;

import java.sql.ResultSet;
import java.sql.Statement;

import com.tickets.model.userlogin;
import com.tickets.util.Databaseconnection;

public class loginService {

	public boolean validate(com.tickets.model.userlogin ul) {
		
		try {
			
			String query = "Select * from user_login where login_email='"+ ul.getUsermail()+"'and password='"+ul.getLogpassword()+"'";
			
			Statement statment = com.tickets.util.Databaseconnection.getConnection().createStatement();
			
			ResultSet rs = statment.executeQuery(query);
			
			if(rs.next()) {
				return true;
			}
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		return false;
	}
}

