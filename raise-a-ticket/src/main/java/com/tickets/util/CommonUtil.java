package com.tickets.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Properties;

public class CommonUtil {

	public static Properties properties = new Properties();
	
	static {
		
		try {
			
			properties.load(QueryUtil.class.getResourceAsStream(CommonConstance.PROPERTY_FILE));
			
		} catch (IOException e) {
			System.out.println(e.getMessage());
		}
	}
	
	
	public static String genarateticketNos(ArrayList<String>Nos) {
		String No;
		
		int next = Nos.size();
		
		No =CommonConstance.TICKET_NUMBER_PREFIX + next;
		
		if(Nos.contains(No)) {
			
			next++;
			
			No =CommonConstance.TICKET_NUMBER_PREFIX + next;
		}
		return No;
	}
	
}
