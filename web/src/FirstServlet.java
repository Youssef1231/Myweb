package web.src;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintStream;

public class FirstServlet extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charSer=UTF-8");
		String name = request.getParameter("name");
		String gender = request.getParameter("gender");
		String[] color = request.getParameterValues("color");
		String nation = request.getParameter("country");
		PrintStream out = new PrintStream(response.getOutputStream());
		out.println("<html>");
		out.println("<head>");
		out.println("<title>servlet test</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("your name:" + name+"</br>");
		out.println("your gender:" + gender+"</br>");
		out.println("nation:" + nation+"</br>");
		out.println("your favorite color:"+"</br>");
		for (String str:color) {
			out.println(str);
			out.println("<br>");
		}
		out.println("</body>");
		out.println("</html>");


	}
}
