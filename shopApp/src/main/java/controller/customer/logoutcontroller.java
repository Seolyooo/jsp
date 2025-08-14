package controller.customer;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.customerService;

@WebServlet("/customer/logout.do")
public class logoutcontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private customerService service = customerService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//로그아웃 처리
		HttpSession session = req.getSession();
		
		session.removeAttribute("sessUser");
		session.invalidate();
		
		// 리다이렉트
		resp.sendRedirect("/shopApp/product/list.do?logout=success");				
	}	
}









