package com.tickets.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBconnection extends CommonUtil {

	private static Connection connection;
	
	private DBconnection(){
		
	}
	
	public static Connection getDBconnection() throws ClassNotFoundException,SQLException{
		
		if(connection == null || connection.isClosed()) {
			
			Class.forName(properties.getProperty(CommonConstance.DRIVER_NAME));
			
			connection = DriverManager.getConnection(properties.getProperty(CommonConstance.URL),
					properties.getProperty(CommonConstance.USERNAME),properties.getProperty(CommonConstance.PASSWORD));
		}
		
		return connection;
	}
	
	
}
