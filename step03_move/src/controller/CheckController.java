package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/check")
public class CheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /*
     login.html - id 입력 --> dev 이면 로그인 성공 / 실패 페이지 이동
     						성공 : /valid, "Welcome, dev"
     						실패 : /invalid, "Not User"
     */

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		System.out.println(id);
		
		if("dev".equals(id)) {
			// /valid
			request.getRequestDispatcher("valid").forward(request, response);
		} else {
			// /invalid
			response.sendRedirect("invalid");
		}
		
	}

}
