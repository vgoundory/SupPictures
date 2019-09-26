package com.supinfo.servlets;

import com.supinfo.beans.Picture;
import com.supinfo.dao.searchDAO;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "searchServlet")
public class searchServlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) {

    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String searchString = request.getParameter("searchterm");
//        ServletOutputStream out = response.getOutputStream();
        out.println("<h1>Results for keyword" + searchString +"</h1>");
        
//        response.getOutputStream().write("searching for %s\n".getBytes(), searchString);
        searchDAO dao = new searchDAO();
        out.println("<table>");
        List<Picture> pix = dao.searchPictures(searchString);
        for (Picture photo : pix
             ) {
        	  out.println("<tr>");
            out.println("<td>");
            out.println("<h1>"+photo.getName() + "</h1></td>");
            out.println("<td><img src='/SupPictures/"+photo.getName()+"' width='200'></td>");
            out.println("<td><h4>" + photo.getDescription()+"</h4></td>");
            out.println("</tr>");
        }
        out.println("</table>");

//

        out.close();

//        response.sendRedirect("/index.jsp");

       // request.setAttribute("pix", "pix");
       // request.getRequestDispatcher("/index.jsp").forward(request, response);


    }
}
