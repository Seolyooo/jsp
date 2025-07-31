package controller;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/welcome.do")
public class welcomeController extends HttpServlet{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//view forward
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/welcome.jsp");
		dispatcher.forward(req, resp);
	}
	
	
	/*
	 * 
	 * 
	 * view forwarf
	 * - jsp 차일에 직접 요청을 못하게 하기 위해 web-inf 폴더 하위에 view 페에지 작성
	 * - jsp 페이지로 controller의 requeset와 response 객체 공유
	 * 
	 * 
	 */
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	

}
