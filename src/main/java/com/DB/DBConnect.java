package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	
	private static Connection Conn;

	public static Connection getconn() {
		
		try {
			if(Conn==null) {
				 Class.forName("com.mysql.cj.jdbc.Driver");
				Conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/job_portal?autoReconnect=true&useSSL=false", "root", "password");
			}
			
		} catch (Exception e){
			e.printStackTrace();
		}
		
		
		return Conn;
	}
}
