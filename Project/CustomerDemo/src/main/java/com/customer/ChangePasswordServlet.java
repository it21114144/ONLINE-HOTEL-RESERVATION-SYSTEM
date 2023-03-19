package com.customer;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChangePasswordServlet
 */
@WebServlet("/ChangePasswordServlet")
public class ChangePasswordServlet extends HttpServlet {
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
		
		String oldpassword = request.getParameter("current");
		String newpassword = request.getParameter("new");
		String confirmpassword = request.getParameter("confirm");
		int id = 0;
		String password = "";
		try {
			con = DBConnect.getConnection();
			stat = con.createStatement();
			
			String sql = "select * from customer where password = '"+oldpassword+"' ";
			rs = stat.executeQuery(sql);
			
			while(rs.next()) {
				id = rs.getInt(1);
				password = rs.getString(7);
				
				if (password.equals(oldpassword)) {
					if(newpassword.equals(confirmpassword)) {
						stat = con.createStatement();
						
						//sql query for update password...
						String sql1 = "update customer set password = '"+newpassword+"' where id = '"+id+"'";
						int rs = stat.executeUpdate(sql1);
						
						out.println("<script type='text/javascript'>");
						out.println("alert('Password Changed Successfully..!');");
						out.println("location='login.jsp'");
						out.println("</script>");
						
					}
					else {
						out.println("<script type='text/javascript'>");
						out.println("alert('Password Mismatch..!');");
						out.println("location='changepassword.jsp'");
						out.println("</script>");
					}
					
				}
				else {
					out.println("<script type='text/javascript'>");
					out.println("alert('Current Password is Invalid..!');");
					out.println("location='changepassword.jsp'");
					out.println("</script>");
				}
				
			}
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		

	}

}
