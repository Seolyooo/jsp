package dao.college;

import java.util.ArrayList;
import java.util.List;

import dto.collete.studentDto;
import util.DBHelper;

public class studentDao extends DBHelper{
	
	private static final studentDao instance = new studentDao();
	public studentDao getInstance() {
		return instance;
	}
	
	private studentDao() {}
	
	private final String DBCP = "jdbc/college";
	
	public void insertStudent(studentDto dto) {	
		try {
			conn = getConnection(DBCP);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
	}
	
	public studentDto selectStudent(String stdno) {
		try {
			conn = getConnection(DBCP);
		} catch (Exception e) {
			e.printStackTrace();
		}
			return null;
		
	}
	
	public List<studentDto> selectAllstudent() {
		try {
			conn = getConnection(DBCP);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		return null;
	}
	
	public void updateStudent(studentDto dto) {
		try {
			conn = getConnection(DBCP);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		
	}
	
	public void deleteStudent(String stdno) {
		try {
			conn = getConnection(DBCP);
		} catch (Exception e) {
			e.printStackTrace();
		}
			
		
	}
}
