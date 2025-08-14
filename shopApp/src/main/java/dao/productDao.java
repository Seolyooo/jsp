package dao;

import java.util.ArrayList;
import java.util.List;

import dto.customerDto;
import dto.productDto;
import util.DBHelper;

public class productDao extends DBHelper{
	
	private static final productDao INSTANCE = new productDao();
	public static productDao getInstance() {
		return INSTANCE;
	}
	
	private productDao() {}
	
	public void insertProduct(productDto dto) {
		try {

			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public productDto selectProduct(int prodNo) {
		return null;
	}
	public List<productDto>  selectAllProduct() {
		
		List<productDto> dtolist = new ArrayList<productDto>();
		try {
			conn= getConnection();
			stmt= conn.createStatement();
			rs = stmt.executeQuery("selete * from product");
			
			while(rs.next()) {
				productDto dto = new productDto();
				dto.setProdNo(rs.getInt(1));
				dto.setProdName(rs.getString(2));
				dto.setStock(rs.getInt(3));
				dto.setPrice(rs.getInt(4));
				dto.setCompany(rs.getString(5));
				dtolist.add(dto);
			}
			
			closeAll();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return dtolist;
	}
	public void updateProduct(productDto dto) {}
	public void deleteProduct() {}


}
