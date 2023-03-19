package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AdminLoginServlet
 */
@WebServlet("/AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String username = request.getParameter("adminun");
		String password = request.getParameter("adminpwd");
		
		boolean isTrue;
		
		isTrue = CustomerDB.validateAdmin(username, password);
		
		if (isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("adminpage.html");
			dis.forward(request, response);
		} 
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Invalid Username or Password..!');");
			out.println("location='adminlogin.jsp'");
			out.println("</script>");
		}
		
		
	}

}
