package com.login;

import java.io.IOException;
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
@WebServlet("/Login")
public class Login extends HttpServlet { /**
	private static final long serialVersionUID = 1L;

   
     * Default constructor. 
     
    public Login() {
        // TODO Auto-generated constructor stub
    }
*/
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String uname = request.getParameter("uname"); //requesting input data
		
		String pass = request.getParameter("pass");
		
		//import the package
		LoginDao dao = new LoginDao();
		
		if(uname.contentEquals("admin") && pass.contentEquals("admin")) {
			
		
			HttpSession session = request.getSession();
			session.setAttribute("username", uname); //username is the label and uname is the data we're sending.
			
			
			response.sendRedirect("index.jsp");
			
		}
		
		
		else if(dao.checkDetails(uname, pass)) {//check from dao
			
		
			HttpSession session = request.getSession();
			session.setAttribute("username", uname); //username is the label and uname is the data we're sending.
			
			
			response.sendRedirect("index.jsp");
			
		}
		
		
		else
		{
			response.sendRedirect("login.jsp");//in case password is wrong
		}
		
		//response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 *//**
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	} */

}
