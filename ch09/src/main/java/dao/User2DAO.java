package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import dto.User2DTO;

public class User2DAO {
	private final static User2DAO instance = new User2DAO();
	public static User2DAO getInstance() {
		return instance;
	}
	
	private User2DAO() {}
	
	public void insertUser2(User2DTO dto) {
		try {
			
			Context ctx = (Context)new InitialContext().lookup("java:comp/env");
			DataSource ds =(DataSource) ctx.lookup("jdbc/seolyooo");
			
			Connection conn = ds.getConnection();
			
			String sql = "";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	public User2DTO selectUser2(String user_id) {
		try {
			Context ctx = (Context) new InitialContext().lookup("java:comp/env");
			DataSource ds = (DataSource) ctx.lookup("jdbc/seolyooo");
			Connection conn = ds.getConnection();
			String sql = "select * from user2 where user_id=?";
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	public List<User2DTO> selectAllUser2() {
		List<User2DTO> dtoList= new ArrayList<>();
		try {
			Context ctx =(Context) new InitialContext().lookup("java:comp/env");
			DataSource ds = (DataSource) ctx.lookup("jdbc/seolyooo");
			
			Connection conn = ds.getConnection();
			Statement stmt = conn.createStatement();
			
			String sql = "select * from user2";
			ResultSet rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				User2DTO dto = new User2DTO();
				dto.setUser_id(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setHp(rs.getString(3));
				dto.setAge(rs.getInt(4));
				dtoList.add(dto);
			}
			rs.close();
			stmt.close();
			conn.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dtoList;
	}
	public void updateUser2(User2DTO dto) {}
	public void deleteUser2(String user_id) {}

}