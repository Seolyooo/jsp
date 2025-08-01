package service.shop;

import java.util.List;

import dao.shop.customerDao;
import dto.shop.customerDto;

//열거형으로 싱글톤 객체 생성
public enum customerService {
	
	instance;
	
	private customerDao dao = customerDao.getInstance();

	public void register(customerDto dto) {
		dao.insertCustomer(dto);
	}
	public customerDto findById(String cid) {
		return dao.selectCustomer(cid);
	}
	public List<customerDto> findAll() {
		return dao.selectAllCustomer();
	}
	public void modify(customerDto dto) {
		dao.updateCustomer(dto);
	}
	public void delete(String cid) {
		dao.deleteCustomer(cid);
	}

}
	
