package com.login;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Registration")
public class Registration extends HttpServlet {
	
	String sql = "INSERT INTO `login` (uname,pass) values(?,?)";
	String url = "jdbc:mysql://localhost:3306/suppictures";
	

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(this.url, "root", "");
			String uname = request.getParameter("uname");
			String password = request.getParameter("pass");
			PreparedStatement ps = con.prepareStatement(this.sql);
			ps.setString(1, uname);
			ps.setString(2, password);
			ps.executeUpdate();
			PrintWriter out = response.getWriter();
			out.println("Registration succesful");
		} 
		
		catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		response.sendRedirect("login.jsp");//sends the user back to login page to login again


	}
}
