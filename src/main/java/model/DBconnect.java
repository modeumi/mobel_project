package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DBconnect {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/project?autoReconnect=true&verifyServerCertificate=false&useSSL=true&useUnicode=true&characterEncoding=utf8";
		String user = "root";
		String pass = "java";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pass);
		return conn;
	}
}
