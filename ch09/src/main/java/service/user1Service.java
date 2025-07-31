package service;

import java.util.List;

import dao.user1Dao;
import dto.user1Dto;

//service : controller의 부가적인 비즈니스 처리를 담당 dao를 요청
//controlloer의 요청을 받아 dao를 호출 ,controller와 dao의 중간 매개 컴포넌트
public class user1Service {
	
	public void insertUser1(user1Dto dto) {
		private user1Dao dao = new user1Dao.getInstance();
		
		
	}
	public user1Dto selectUser1(String user_id) {
		return dao.selectUser1(user_id);
	}
	public List<user1Dto> selectAlluser1() {
		return dao.selectUser1(user_id);

	}
	public void updateUser1(user1Dto dto) {}
	public void deleteUser1(String user_id) {}
	
	

}
