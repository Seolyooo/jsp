package service;

import java.util.List;

import dao.customerDao;
import dto.customerDto;

public enum customerService {
	INSTANCE;
	
	
	private customerDao dao = customerDao.getInstance();
	
	//dao 요청메서드
	public void register(customerDto dto) {
		dao.insertcustomer(dto);
	}
	public customerDto findbyId(String cid) {
		return dao.selectcustomer(cid);
		
	}
	public List<customerDto> findAll(customerDto dto) {
		return dao.selectAllcustomer(dto);
	}
	public void modify(customerDto dto) {
		dao.updatecustomer(dto);
		
	}
	public void delete(String cid) {
		dao.deletecustomer(cid);
	}
}
