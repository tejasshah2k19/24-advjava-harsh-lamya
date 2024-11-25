package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {

	public static void main(String[] args) {

		// java -----------> db

		String driverName = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://localhost:3306/hl";
		String userName = "root";
		String password = "root";

		try {
			// load driver
			Class.forName(driverName);

			Connection con = DriverManager.getConnection(url, userName, password);

			if (con == null) {
				System.out.println("Db not Connected");
			} else {
				System.out.println("dbConnected");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}
}
