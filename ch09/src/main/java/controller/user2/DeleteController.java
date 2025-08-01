package controller.user2;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.User2Service;

@WebServlet("/user1/delete.do")
public class DeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private User2Service service = User2Service.getInstance();
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String user_id = req.getParameter("user_id");
		service.delete(user_id);
		resp.sendRedirect(req.getContextPath() + "/user1/list.do");
	}


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 삭제할 사용자 ID 수신
		String user_id = req.getParameter("user_id");

		// 서비스로 삭제 처리
		service.delete(user_id);

		// 목록 페이지로 리디렉션
		resp.sendRedirect("/ch09/user1/list.do");
	}
}
