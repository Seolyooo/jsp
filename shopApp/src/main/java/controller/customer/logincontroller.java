package controller.customer;

import java.io.IOException;

import dto.customerDto;
import jakarta.security.auth.message.callback.PrivateKeyCallback.Request;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import service.customerService;


@WebServlet("/customer/login.do")
public class logincontroller extends HttpServlet{


	private static final long serialVersionUID = 1L;
	
	private customerService service = customerService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RequestDispatcher dispactcher = req.getRequestDispatcher("/WEB-INF/views/customer/list.jsp");
		dispactcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cid = req.getParameter("cid");
		
		//회원이 아님 null
		customerDto customerDto = service.findbyId(cid);
		
		if (customerDto != null) {
			//외원일 경우(세션처리) 조회한 회원객체를 세션 저장
			HttpSession session= req.getSession();
			session.setAttribute("sessUser", customerDto);
			
			//이동
			resp.sendRedirect("/shopApp/product/list.do?login=success");
			
			
		} else {
			//회원이 아니면 상품목록으로 이동
			resp.sendRedirect("/shopApp/product/list.do?logon=fail");
		}
		
		
		
	}


	

}
