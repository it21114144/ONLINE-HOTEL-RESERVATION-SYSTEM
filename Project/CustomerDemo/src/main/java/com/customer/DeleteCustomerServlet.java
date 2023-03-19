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
 * Servlet implementation class DeleteCustomerServlet
 */
@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String id = request.getParameter("cid");
		boolean isTrue;
		
		isTrue = CustomerDB.deleteCustomer(id);
		
		if(isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Account Deleted..!');");
			out.println("location='customerinsert.jsp'");
			out.println("</script>");
		}
		else {
			List <Customer> customerDetails = CustomerDB.getCustomerDetails(id);
			request.setAttribute("customerDetails", customerDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		
	}

}
