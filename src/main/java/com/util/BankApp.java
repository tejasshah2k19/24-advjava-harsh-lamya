package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Scanner;

public class BankApp {
	public static void main(String[] args) {

		CustomerDao customerDao = new CustomerDao();
		// add Customer
		Scanner scr = new Scanner(System.in);
		System.out.println("Enter firstName email and password");
		String firstName = scr.next();
		String email = scr.next();
		String password = scr.next();

		Customer c = new Customer();
		c.setFirstName(firstName);
		c.setEmail(email);
		c.setPassword(password);

		customerDao.addCustomerDb(c);
	}
}

class Customer {
	private int customerId;
	private String firstName;
	private String email;
	private String password;

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

}

//data access object -> database 
class CustomerDao {

	public void addCustomerDb(Customer customer) {
		try {
			String driverName = "com.mysql.cj.jdbc.Driver";
			String url = "jdbc:mysql://localhost:3306/hl";
			String userName = "root";
			String password = "root";

			Class.forName(driverName);
			Connection con = DriverManager.getConnection(url, userName, password);

			// PreparedStatement

			PreparedStatement pstmt = con
					.prepareStatement("insert into customers (firstName,email,password) values (?,?,?)");

			pstmt.setString(1, customer.getFirstName());
			pstmt.setString(2, customer.getEmail());
			pstmt.setString(3, customer.getPassword());

			// run
			int rec = pstmt.executeUpdate(); // insert , delete , update
			System.out.println(rec+" inserted....");
		} catch (Exception e) {

		}
	}
}
