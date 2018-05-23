package web.src;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author Youssef
 */
@WebFilter(filterName = "authority",urlPatterns = {"/jsp/img.jsp"},initParams = {
		@WebInitParam(name = "encoding", value = "UTF-8"),
		@WebInitParam(name = "loginPage", value = "/jsp/login.jsp"),
		@WebInitParam(name = "proLogin", value = "/jsp/proLogin.jsp")})
public class Authority implements Filter {
	private FilterConfig filterConfig;
	@Override
	public void init(FilterConfig filterConfig) {
		this.filterConfig = filterConfig;
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		String encoding = filterConfig.getInitParameter("encoding");
		String loginPage = filterConfig.getInitParameter("loginPage");
		String proLogin = filterConfig.getInitParameter("proLogin");
		servletRequest.setCharacterEncoding(encoding);
		HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
		HttpSession session = httpServletRequest.getSession(true);
		if (session.getAttribute("username") == null) {
			servletRequest.setAttribute("tip", "You haven't login yet");
			servletRequest.getRequestDispatcher(loginPage).forward(servletRequest, servletResponse);
		} else {
			filterChain.doFilter(servletRequest, servletResponse);
		}
	}

	@Override
	public void destroy() {
		this.filterConfig = null;
	}
}
