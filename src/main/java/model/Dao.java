package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;



public class Dao {
//	public static insert () {
//		
//	}
	public Member login( String id, String pass) {
		Member member = new Member();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = DBconnect.getConnection();
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
	
	public static Item iteminfo (String id) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		Item item = new Item();
		try {
			conn = DBconnect.getConnection();
			pstmt = conn.prepareStatement("select * from item where id = '"+id+"' " );
			rs = pstmt.executeQuery();
			if (rs.next()) {
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setImg(rs.getString("image"));
				item.setPrice(rs.getInt("price"));
				return item;
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
		return item;
	}
	
}
