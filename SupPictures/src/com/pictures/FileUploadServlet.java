package com.pictures;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.PrintWriter;
import com.mysql.jdbc.PreparedStatement;

	@WebServlet("/FileUploadServlet")
	@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 2,
	
			maxFileSize = 1024 * 1024 * 10,
			maxRequestSize = 1024 * 1024 * 50)

public class FileUploadServlet extends HttpServlet {
	/**
		 * 
		 */
		private static final long serialVersionUID = 1L;
		private int id = 0;
	String sql = "INSERT INTO `image_table` (firstname, lastname, fileName, path, details) VALUES (?,?,?,?,?);";
	String url = "jdbc:mysql://localhost:3306/suppictures";

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		System.out.println("started here");
		PrintWriter out = response.getWriter();
		
		String firstName = request.getParameter("firstname");
		String lastName = request.getParameter("lastname");
		String details = request.getParameter("details");
		
		
		Part part = request.getPart("file");
		String fileName = extractFileName(part);
		String savePath = "C:\\Users\\Vashist\\Desktop\\Eclipse\\SupPictures\\WebContent\\" + File.separator + fileName;
		File fileSaveDir = new File(savePath);
		System.out.println(fileName);
		
		part.write(savePath + File.separator);
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(this.url, "root", "");
			String uname = request.getParameter("uname");
			String password = request.getParameter("pass");
			PreparedStatement ps = (PreparedStatement) con.prepareStatement(this.sql);
			ps.setString(1, firstName);
			ps.setString(2, lastName);
			ps.setString(3, fileName);
			ps.setString(4, savePath);
			ps.setString(5, details);
			ps.executeUpdate();
			out.println("<center><h1>Image inserted</h1></center>");
			out.println("<center><a href='pictureManagement.jsp?id=" + this.id + "'>Display</a></center>");
			this.id++;
			
		} catch (Exception e) {
			out.println();
		}
		
		
		
	}

	private String extractFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		String[] items = contentDisp.split(";");
		for (String s : items) {
			if (s.trim().startsWith("filename")) {
				return s.substring(s.indexOf("=") + 2, s.length() - 1);
			}
		}
		// TODO Auto-generated method stub
		return "";
	}
	
}