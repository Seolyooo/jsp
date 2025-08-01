package controller.shop.customer;

import java.io.IOException;
import java.lang.System.Logger;

import org.slf4j.LoggerFactory;

import dto.shop.customerDto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.shop.customerService;

@WebServlet("/shop/customer/register.do")
public class registerController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	
	// 서비스 객체 가져오기
	private customerService service = customerService.instance;
	
	//로거생성
	private Logger logger = LoggerFactory.getLogger(this.getClass());

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/shop/customer/register.jsp");
		dispatcher.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cid = req.getParameter("cid");
		String name = req.getParameter("name");
		String hp = req.getParameter("hp");
		String address = req.getParameter("address");
		String rdate = req.getParameter("rdate");
		
		customerDto dto = new customerDto();
		dto.setCid(cid);
		dto.setName(name);
		dto.setHp(hp);
		dto.setAddress(address);		
		dto.setRdate(rdate);
		
		logger.info(dto.toString());
		
		service.register(dto);
		
		resp.sendRedirect("/ch10/shop/customer/list.do");
		
		
	}
	
}











