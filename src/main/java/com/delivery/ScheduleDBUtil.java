package com.delivery;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class ScheduleDBUtil {	

	
	public static boolean insertdelivery( String sAddress, String rName, String rAddress, String itemType, String vehicle, String dateTime) {
		
		boolean isSuccess = false;
		
				//create database connection
				String url ="jdbc:mysql://localhost:3306/tranceportsystem";
				String user = "root";
				String pass = "2021";				
				
				try {
					
					Class.forName("com.mysql.jdbc.Driver");			
				    Connection con = DriverManager.getConnection(url, user, pass);		    
				    Statement stmt = con.createStatement();		    
				    String sql = "INSERT INTO sdelivery values (0 , '"+ sAddress +"', '"+ rName + "', '"+ rAddress + "','"+ itemType + "','" + vehicle + "' , '" + dateTime + "', 'chalani') ";
				    int rs = stmt.executeUpdate(sql);	
				    
				    if(rs > 0) {
				    	isSuccess = true;
				    }   				       				    
				}		
				catch (Exception e) {
					e.printStackTrace();
				}
		
		
		
		return isSuccess;
	}
	
	public static List<Delivery> getHistory(String username) {
		
		
	     
		ArrayList<Delivery> delivery = new ArrayList<>();
		
		try {
			
			
			String url ="jdbc:mysql://localhost:3306/tranceportsystem";
			String user = "root";
			String pass = "2021";
			Class.forName("com.mysql.jdbc.Driver");			
		    Connection con = DriverManager.getConnection(url, user, pass);		    
		    Statement stmt = con.createStatement();		 
			String sql = "select * from sdelivery where r_name = " + username ;
			ResultSet rs = stmt.executeQuery(sql);
			
			System.out.println(rs);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String sAddress = rs.getString(2);
				String rName = rs.getString(3);
				String rAddress = rs.getString(4);
				String itemType = rs.getString(5);
				String vehicle = rs.getString(6);
				String dateTime = rs.getString(7);				
							
				Delivery del = new Delivery(id,  sAddress,  rName,  rAddress,  itemType,  vehicle,  dateTime);
				delivery.add(del);
			}
			
		} catch (Exception e) {
			
		}
		
		return delivery;	
	}
	
	/*  Update delivery*/
		public static boolean updatedelivery(String sAddress, String rName, String rAddress, String itemType, String vehicle, String dateTime, String username) {
    	
    	boolean isSuccess = false;
		try {
    		
    		String url ="jdbc:mysql://localhost:3306/tranceportsystem";
			String user = "root";
			String pass = "2021";
			Class.forName("com.mysql.jdbc.Driver");			
		    Connection con = DriverManager.getConnection(url, user, pass);		    
		    Statement stmt = con.createStatement();		
			String sql = "update sdelivery set s_address='"+sAddress+"',r_name='"+rName+"',r_address='" +rAddress+"',item_type='"+itemType+"',vehicle='"+vehicle+"',datetime='"+dateTime+"'"
    				+ "where r_name='"+rName+"'";
    		int rs = stmt.executeUpdate(sql);
    		
    		if(rs > 0) {
    			isSuccess  = true;
    		}
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }
 
	
	public static boolean deleteDelivery(String dId) {
    	
    	int id = Integer.parseInt(dId);
    	
    	boolean isSuccess= false;
		try {
    		
    		String url ="jdbc:mysql://localhost:4306/tranceportsystem";
			String user = "root";
			String pass = "";
			Class.forName("com.mysql.jdbc.Driver");			
		    Connection con = DriverManager.getConnection(url, user, pass);		    
		    Statement stmt = con.createStatement();		 
    		String sql = "delete from sdelivery where id='"+id+"'";
    		int r = stmt.executeUpdate(sql);
    		
    		if (r > 0) {
    			isSuccess = true;
    		}
    		
    	}
    	catch (Exception e) {
    		
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
    }

	/*
	 * public static List<Delivery> getDelivary(String UserName) {
	 * 
	 * ArrayList <Delivery> emp = new ArrayList<>();
	 * 
	 * try {
	 * 
	 * String url ="jdbc:mysql://localhost:4306/tranceportsystem"; String user =
	 * "root"; String pass = ""; Class.forName("com.mysql.jdbc.Driver"); Connection
	 * con = DriverManager.getConnection(url, user, pass); Statement stmt =
	 * con.createStatement();
	 * 
	 * String sql = "select * from sdelivery where r_name = " + UserName"; int r =
	 * stmt.executeUpdate(sql);
	 * 
	 * 
	 * 
	 * if (r > 0) { isSuccess = true; }
	 * 
	 * } catch (Exception e) {
	 * 
	 * e.printStackTrace(); }
	 * 
	 * return isSuccess; }
	 */

}
