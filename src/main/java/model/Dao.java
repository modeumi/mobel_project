package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Dao {
	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Connection conn = null;
		String url = "jdbc:mysql://localhost:3306/project?autoReconnect=true&verifyServerCertificate=false&useSSL=true&useUnicode=true&characterEncoding=utf8";
		String user = "root";
		String pass = "java";
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(url, user, pass);
		return conn;
	}
<<<<<<< HEAD
//	public static insert () {
		
//	}
	public Member login( String id, String pass) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Member member = new Member();
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from member where id = '" + id + "' ");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("pass").equals(pass)) {
=======
	public static insert () {
		
	}
	public Member login( String id, String pass) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from member where id = '" + id + "' ");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("pass").equals(pass)) {
					Member member = new Member();
>>>>>>> refs/remotes/origin/mobel
					member.setID(rs.getString("id"));
					member.setPass(rs.getString("pass"));;
					member.setName(rs.getString("name"));
					member.setEmail(rs.getString("email"));
					member.setPhone(rs.getString("phone"));
					return member;
				}else {
				}
			} else {
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return member;
	}
	
}
