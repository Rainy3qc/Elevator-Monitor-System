package com.EMS.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/HelloServlet")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//重写doGet方法
		public void doGet(HttpServletRequest request,
	            HttpServletResponse response)
	     throws ServletException,
	            IOException {
			String username = request.getParameter("username");   
			String password = request.getParameter("password");      
			
			//服务器端打印信息
			//System.out.println("username=" + username);
			//System.out.println("password=" + password);
			//设置编码格式
			response.setContentType("text/html;charset=GB18030");
			
			//返回html页面
			response.getWriter().println("<html>");
			response.getWriter().println("<head>");	
			response.getWriter().println("<title>登录信息</title>");	
			response.getWriter().println("</head>");	
			response.getWriter().println("<body>");	
			response.getWriter().println("欢迎【" + username + "】用户登录成功！！！");	
			response.getWriter().println("</body>");	
			response.getWriter().println("</html>");
			}                 	
		//重写doPost方法
		public void doPost(HttpServletRequest request,
	            HttpServletResponse response)
	    throws ServletException,
	            IOException {
			doGet(request, response);               	
		}     


}
