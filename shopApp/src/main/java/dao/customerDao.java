package dao;

import java.util.List;

import dto.customerDto;
import util.DBHelper;

public class customerDao extends DBHelper{
	
	private static final customerDao INSTANCE = new customerDao();
	public static customerDao getInstance() {
		return INSTANCE;
	}
	
	private customerDao() {}
	
	public void insertcustomer(customerDto dto) {
		try {
			conn = getConnection();
			String sql = "insert into customer values (?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getCid());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getHp());
			psmt.setString(4, dto.getAddr());
			psmt.setString(5, dto.getRdate());
			
			psmt.executeUpdate();
			closeAll();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	public customerDto selectcustomer(String cid) {
		customerDto dto =null;
		
		
		try {
			conn= getConnection();
			conn.prepareStatement("select * from customer where cid=?");
			psmt.setString(1, cid);
			
			rs=psmt.executeQuery();
			if(rs.next()) {
				dto = new customerDto();
				dto.setCid(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setHp(rs.getString(3));
				dto.setAddr(rs.getString(4));
				dto.setRdate(rs.getString(5));
			}
			closeAll();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		
		}
		return dto;
		
	}
	public List<customerDto> selectAllcustomer(customerDto dto) {
		return null;
	}
	public void updatecustomer(customerDto dto) {}
	public void deletecustomer(String cid) {}
	

}
