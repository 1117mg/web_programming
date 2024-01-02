package var;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/var")
@WebServlet(urlPatterns = {"/var"}, 
			initParams = {@WebInitParam(name = "charset", value = "UTF-8")})
public class VarTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	// Context : 서블릿이 관리하는 모든 영역
	String charset = null;
//	int i = 0;
	/*
	  2명의 user가 프로젝트 접속!!!
   	     서비스 : 1 ~ 100 출력
   	  id=user1, id=user2
	 */
	
  	public void init(ServletConfig config) throws ServletException {
		System.out.println(config.getInitParameter("charset"));
		charset = config.getInitParameter("charset");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int i = 0;
		String userId = request.getParameter("id");
		
		response.setContentType("text/html; charset=" + charset);
		PrintWriter out = response.getWriter();
		
		while(i++ < 100) {
			out.println(userId + " : " + i + "<br/>");
			out.flush();
			
			try {
				Thread.sleep(1000);
			} catch (InterruptedException e) {
				e.printStackTrace();
			}
			
		}
		
		out.close();
	