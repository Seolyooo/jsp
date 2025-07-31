package sub2;

import java.io.IOException;

import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;

public class filterA implements Filter{

	@Override
	public void doFilter(ServletRequest rep, ServletResponse resp, FilterChain chain) throws IOException, ServletException {
		//필터링 수행
		System.out.println("filterA dofilter");
		
		//다음 필터 이동(최종 필터는 서블릿)
		chain.doFilter(rep, resp);
		
		
		
	}
	
	
	
	
	
	
	

}
