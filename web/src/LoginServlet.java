package web.src;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginServlet extends HttpServlet {

	/**
	 * give the response for the request
	 */
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String errMsg = "";
		// forward to a page
		RequestDispatcher rd;
		String username = request.getParameter("username");
		String pass = request.getParameter("pass");
		try {
			DbDao dd = new DbDao("com.mysql.jdbc.Driver", "jdbc:mysql://localhost:3306/liuyan", "root", "111");
			ResultSet rs = dd.query("select pass from user_inf where name=?", username);
			if (rs.next()) {
				if (rs.getString("pass").equals(pass)) {
					HttpSession session = request.getSession(true);
					session.setAttribute("name", username);
					rd = request.getRequestDispatcher("/jsp/welcome.jsp");
					rd.forward(request, response);
				} else {
					errMsg = "Your username or password is not right ,please try again";
				}
			} else {
				errMsg += "we don't have such a username";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (errMsg != null && !errMsg.equals("")) {
			rd = request.getRequestDispatcher("/jsp/login.jsp");
			request.setAttribute("err", errMsg);
			rd.forward(request, response);
		}
	}
}
