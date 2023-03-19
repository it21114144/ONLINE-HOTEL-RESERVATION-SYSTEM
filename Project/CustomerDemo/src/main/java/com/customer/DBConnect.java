package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	/*
	private static String url = "jdbc:mysql://localhost:3306/online_hotel_reservation";
	private static String user = "root";
	private static String password_db = "abcd1234";

	private static Connection con;
	
	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, user, password_db);
		}
		catch(Exception e){
			System.out.println("Database connection is failed..!");
			e.printStackTrace();
		}
		return con;
	*/
	
	private static String url = "jdbc:mysql://localhost:3306/online_hotel_reservation";
	private static String user = "root";
	private static String password_db = "abcd1234";
	
	private static Connection con;
	
	public static Connection getConnection() throws SQLException {
		// singleton pattern for connection
		if (con == null || con.isClosed()) {
			// Exception handling 
			try {
				Class.forName("com.mysql.jdbc.Driver");

				con = DriverManager.getConnection(url, user, password_db);

			} catch (Exception e) {
				System.out.println("Database connection is not successful");
			}
		}
		return con;
		
	}
	
}
