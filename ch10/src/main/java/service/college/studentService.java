package service.college;

import java.util.List;

import dao.college.studentDao;
import dto.collete.studentDto;

public enum studentService {

	
	insatnce;
	
	private studentDao dao = studentDao.getInstance();
	public void insertStudent(studentDto dto) {	
		dao.insertStudent(dto);
			
	}
	
	public studentDto selectStudent(String stdno) {
		return dao.selectStudent(stdno)
		
	}
	
	public List<studentDto> selectAllstudent() {
		return dao.selectAllstudent();
	}
	
	public void updateStudent(studentDto dto) {
		 dao.updateStudent(dto);
		
	}
	
	public void deleteStudent(String stdno) {
		dao.deleteStudent(stdno);
}
