package com.revature.Grading.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionUtil {

	public static Connection getConnection() {
		String driverClassName = "com.mysql.cj.jdbc.Driver";
		String url = "jdbc:mysql://trainingdb.ck1ayq0lncmp.ap-south-1.rds.amazonaws.com:3306/suba_db";
		String username = "suba";
		String password = "suba";
		Connection con = null;
		try {
			Class.forName(driverClassName);
			con = DriverManager.getConnection(url, username, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new RuntimeException("unable to load the drive class");

		} catch (SQLException e) {
			e.printStackTrace();
			throw new RuntimeException("unable to get DB Connection");
		}

		return con;

	}

}
