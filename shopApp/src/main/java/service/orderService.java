package service;

import dao.orderDao;
import dto.orderDto;

public enum orderService {

	INSTANCE;
	
	private orderDao dao = orderDao.getInstance();
		
	// DAO 요청메서드
	public void register(orderDto dto) {
		dao.insertOrder(dto);
	}
	
	
}