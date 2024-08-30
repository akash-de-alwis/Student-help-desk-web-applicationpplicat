package com.tickets.util;

import java.io.IOException;
import java.io.File;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.SAXException;

public class QueryUtil extends CommonUtil{
	
	public static String queryByid (String id) throws SAXException, IOException, ParserConfigurationException{
		
		NodeList nodeList;
		Element element = null;
		
		nodeList = DocumentBuilderFactory.newInstance()
				.newDocumentBuilder().parse(new File(System.getProperty("catalina.base")+"\\wtpwebapps\\raise-a-ticket\\WEB-INF\\queries.xml"))
				.getElementsByTagName(CommonConstance.TAG_NAME);
		
		for(int value = 0; value < nodeList.getLength(); value++) {
			element = (Element) nodeList.item(value);
			
			if(element.getAttribute(CommonConstance.ATTRIBE_NAME).equals(id)) {
				
				break;
			}
		}
		
		return element.getTextContent().trim();
	}
	
}
