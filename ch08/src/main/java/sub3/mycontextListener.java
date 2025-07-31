package sub3;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;

public class mycontextListener implements ServletContextListener{

	public mycontextListener() {
		System.out.println("mycontextlistener  생성");
	}
	
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("MyContextListener contextInitialized...");
	}
	
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("MyContextListener contextDestroyed...");
	}
}
