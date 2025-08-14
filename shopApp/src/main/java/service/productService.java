package service;

import java.util.List;

import dao.productDao;
import dto.productDto;

public enum productService {

	INSTANCE;
	
	private productDao dao = productDao.getInstance();
		
	// DAO 요청메서드
	public void register(productDto dto) {
		dao.insertProduct(dto);
	}
	
	public productDto findById(int prodNo) {
		return dao.selectProduct(prodNo);
	}	
	public List<productDto> findAll() {
		return dao.selectAllProduct();
	}
	public void modify(productDto dto) {
		dao.updateProduct(dto);
	}
	public void delete(int prodNo) {		
	}
}