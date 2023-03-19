package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResetPasswordServlet
 */
@WebServlet("/ResetPasswordServlet")
public class ResetPasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Connection con = null;
	private static Statement stat = null;
	private static ResultSet rs = null;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String cusemail = request.getParameter("email");
		String newpassword = request.getParameter("newpwd");
		String confirmpassword = request.getParameter("cnewpwd");
		String email = "";
	
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
			
			String sql = "select * from customer where email = '"+cusemail+"' ";
			rs = stat.executeQuery(sql);
			

			
			while(rs.next()) {
				email = rs.getString(3);
					if(newpassword.equals(confirmpassword)) {
						stat = con.createStatement();
						String sql1 = "update customer set password = '"+newpassword+"' where email = '"+email+"'";
						int rs1 = stat.executeUpdate(sql1);
						
						RequestDispatcher dis = request.getRequestDispatcher("login.jsp");
						dis.forward(request, response);
						}
					else {
						out.println("<script type='text/javascript'>");
						out.println("alert('Password Mismatch!');");
						out.println("location='forgotpassword.jsp'");
						out.println("</script>");
						}
					
			
				}
				
				
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
	}

}
