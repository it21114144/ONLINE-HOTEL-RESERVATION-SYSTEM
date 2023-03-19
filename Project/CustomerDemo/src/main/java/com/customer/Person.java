package com.customer;

public class Person {
	
	private String username;
	private String password;
	
	//overloaded constructor
	public Person(String username, String password) {
		this.username = username;
		this.password = password;
	}
	
	
	//getters
		public String getUsername() {
			return username;
		}

		public String getPassword() {
			return password;
		}


}
