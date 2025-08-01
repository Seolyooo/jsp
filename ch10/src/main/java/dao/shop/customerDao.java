package dao.shop;

import java.lang.System.Logger;
import java.util.ArrayList;
import java.util.List;

import org.slf4j.LoggerFactory;

import dto.shop.customerDto;
import util.DBHelper;

public class customerDao extends DBHelper {
	
	private static final customerDao INSTANCE = new customerDao();
	public static customerDao getInstance() {
		return INSTANCE;
	}	
	private customerDao() {}
	
	private final String DBCP = "jdbc/shop";
	
	
	//로거생성
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	public void insertCustomer(customerDto dto) {		
		
		try {
			conn = getConnection(DBCP);
			
			String sql = "INSERT INTO CUSTOMER VALUES (?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getCid());
			psmt.setString(2, dto.getName());
			psmt.setString(3, dto.getHp());
			psmt.setString(4, dto.getAddress());
			psmt.setString(5, dto.getRdate());			
			psmt.executeUpdate();
			closeAll();			
		}catch (Exception e) {			
			e.printStackTrace();
			logger.error(e.getMessage());
		}		
	}
	
	public customerDto selectCustomer(String cid) {
		
		customerDto dto = null;
		
		try {
			conn = getConnection(DBCP);
			
			String sql = "SELECT * FROM CUSTOMER WHERE CID=?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, cid);
			
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				dto = new customerDto();
				dto.setCid(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setHp(rs.getString(3));
				dto.setAddress(rs.getString(4));
				dto.setRdate(rs.getString(5));				
			}			
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}		
		
		return dto;
	}
	
	public List<customerDto> selectAllCustomer() {
		
		List<customerDto> dtoList = new ArrayList<customerDto>();
		
		try {
			conn = getConnection(DBCP);			
			stmt = conn.createStatement();
			
			String sql = "SELECT * FROM CUSTOMER";
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				customerDto dto = new customerDto();
				dto.setCid(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setHp(rs.getString(3));
				dto.setAddress(rs.getString(4));
				dto.setRdate(rs.getString(5));
								
				dtoList.add(dto);
			}			
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}		
		return dtoList;
	}
	
	public void updateCustomer(customerDto dto) {
		
	}
	
	public void deleteCustomer(String cid) {
		
	}
}