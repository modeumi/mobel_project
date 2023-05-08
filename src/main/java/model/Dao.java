package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpSession;

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
//	public static insert () {
//		
//	}
	public Member login( String id, String pass) {
		Member member = new Member();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from member where id = '" + id + "' ");
			rs = pstmt.executeQuery();
			if (rs.next()) {
				if (rs.getString("pass").equals(pass)) {
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
	
	public static void iteminfo (String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Item item = new Item();
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select * from item where id = '"+id+"' " );
			rs = pstmt.executeQuery();
			if (rs.next()) {
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setImg(rs.getString("image"));
				item.setPrice(rs.getInt("price"));
			}
		}catch (Exception e ) {
			e.printStackTrace();
		}finally {
			try {
				if (rs !=null) {rs.close();}
				if (pstmt !=null) {pstmt.close();}
				if (conn !=null) {conn.close();}
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
	}
	
}
