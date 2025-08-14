package controller.order;

import java.io.IOException;

import dto.orderDto;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import service.orderService;


@WebServlet("/order/register.do")
public class registercontroller extends HttpServlet{


	private static final long serialVersionUID = 1L;
	
	private orderService service = orderService.INSTANCE;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String prodNo = req.getParameter("prodNo");
		String prodCount = req.getParameter("prodCount");
		
		orderDto dto = new orderDto();
		dto.setOrderProduct(prodNo);
		
		
		
		
		RequestDispatcher dispactcher = req.getRequestDispatcher("/WEB-INF/views/order/register.jsp");
		dispactcher.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	}
	

}
