package com.customer;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CustomerInsert
 */
@WebServlet("/CustomerInsert")
public class CustomerInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		String nic = request.getParameter("nic");
		String username = request.getParameter("uname");
		String password = request.getParameter("pwd");
		
		boolean isTrue;
		
		isTrue = CustomerDB.insertCustomer(name, email, phone, nic, username, password);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
			dis.forward(request, response);
			
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Registration Failed..!');");
			out.println("location='customerinsert.jsp'");
			out.println("</script>");
		}
		
	}

}
