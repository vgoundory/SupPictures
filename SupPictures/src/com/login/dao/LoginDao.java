package com.login.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.mysql.jdbc.Statement;

public class LoginDao {
	String sql = "SELECT * FROM `login` WHERE uname=? AND pass=?;";
	String url = "jdbc:mysql://localhost:3306/suppictures";
	String username = "root";
	String password = "";//password for the database
	
	public boolean checkDetails(String uname, String pass)
	{
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, username, password);
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, uname);
			st.setString(2, pass);
			
			ResultSet rs = st.executeQuery();
			rs.last();
			int resultSize = rs.getRow();
			con.close();
			
			return resultSize > 0;
//			while(rs.next()) System.out.println(rs.);  
			
			 
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}

}
