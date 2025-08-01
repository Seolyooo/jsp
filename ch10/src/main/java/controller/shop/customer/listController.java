package controller.shop.customer;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import dto.shop.customerDto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.shop.customerService;



@WebServlet("/shop/customer/list.do")
public class listController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private customerService service = customerService.instance;
	
	
	//로거생성
	private Logger logger = LoggerFactory.getLogger(this.getClass());
	
	

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		/*
		 * 개발환경에서는 system 출력으로 개발과정을 테스트할 수 있지만
		 * 배포환경에서는 system 출력이 자원낭비로 처리됨 따라서 system 출려긍로 하지 말고 logger 이욜해 출력해야함
		 * 개발단계에서는 debug 레벨로 로그작업
		 * 배포단계에서는 warn 레벨 이상으로 로그작업
		 * 
		 */
		logger.debug("debug here...1");
		logger.info("info here...1");
		logger.warn("warn here...1");
		logger.error("error here...1");
		
		List<customerDto> dtoList = service.findAll();

		logger.debug("debug here...2" + dtoList);
		logger.info("info here...2" + dtoList);
		logger.warn("warn here...2" + dtoList);
		logger.error("error here...2" + dtoList);
		
		req.setAttribute("dtoList", dtoList);
		
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/shop/customer/list.jsp");
		dispatcher.forward(req, resp);
	}
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
}