package web.src;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.Filter;
import java.util.logging.LogRecord;

@WebFilter(filterName = "log", urlPatterns = {"/*"})

public class LogFilter implements javax.servlet.Filter {
	private FilterConfig filterConfig;


	/**
	 * initialize method
	 * @param filterConfig
	 * @throws ServletException
	 */
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.filterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse,
	                     FilterChain filterChain) throws IOException, ServletException {
		//get getServletContext to record
		ServletContext context = this.filterConfig.getServletContext();
		long before = System.currentTimeMillis();
		System.out.println("start filtering");
		HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
		System.out.println("Filter get the url from user" + httpServletRequest.getServletPath());
		//give back the chain
		filterChain.doFilter(servletRequest, servletResponse);
		//post-Processing
		long after = System.currentTimeMillis();
		//print the end message
		System.out.println("filter end");
		System.out.println("request next location is:" + httpServletRequest.getRequestURL()
				+ ", time spent: " + (after - before));
	}

	/**
	 * destroy method
	 */
	@Override
	public void destroy() {
		this.filterConfig = null;
	}
}
