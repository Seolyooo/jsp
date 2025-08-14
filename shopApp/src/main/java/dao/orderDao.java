package dao;

import java.util.ArrayList;
import java.util.List;

import dto.orderDto;
import util.DBHelper;

public class orderDao extends DBHelper {
	
	private static final orderDao INSTANCE = new orderDao();
	public static orderDao getInstance() {
		return INSTANCE;
	}
	private orderDao() {}
	
	// 기본 CRUD 메서드
	public void insertOrder(orderDto dto) {
		
		try {
			conn = getConnection();
			
			String sql = "INSERT INTO \"Order\" (ORDERID, ORDERPRODUCT, ORDERCOUNT, ORDERDATE) values (?,?,?,SYSDATE)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getOrderId());
			psmt.setInt(2, dto.getOrderProduct());
			psmt.setInt(3, dto.getOrderCount());
			psmt.executeUpdate();			
			closeAll();
		}catch (Exception e) {
			e.printStackTrace();
		}		
	}
}













