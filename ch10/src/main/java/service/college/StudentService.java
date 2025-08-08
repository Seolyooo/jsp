package service.college;

import java.util.List;

import dao.college.studentDao;
import dto.college.studentDto;

public enum StudentService {
	
	instance;	
	
	private studentDao dao = studentDao.getInstance();
	
	public void register(studentDto dto) {
		dao.insertStudent(dto);		
	}
	
	public studentDto findById(String stdNo) {		
		return dao.selectStudent(stdNo);
	}
	
	public List<studentDto> findAll() {		
		return dao.selectAllstudent();
	}
	
	public void modify(studentDto dto) {			
		dao.updateStudent(dto);
	}
	
	public void delete(String stdNo) {
		dao.deleteStudent(stdNo);
	}
}