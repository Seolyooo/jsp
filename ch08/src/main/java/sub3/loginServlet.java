package sub3;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/login.do")
public class loginServlet extends HttpServlet{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
	
		//사용자 a101이고 비번이 1234
		if(id.equals("a101")&&pw.equals("1234")) {
			
			// 현재 사용자 세션 가져오기(jsp 환경이 아니기 때문에 jsp 내장객체 session 사용 못함)
			HttpSession session = req.getSession();
			
			//로그인 세션 처리
			session.setAttribute("sessUser", id);
			
			//이동
			resp.sendRedirect("/ch08/listener.jsp");
		}else {
			//이동
			resp.sendRedirect("/ch08/listener.jsp");
			
		}
		
	}
}
