<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display</title>
</head>
<body>
<%

	int imageid = Integer.parseInt(request.getParameter("id"));
String sql = "SELECT fileName FROM `image_table`";
String url = "jdbc:mysql://localhost:3306/suppictures";
String username = "root";
String password = "";//password for the database


	try {
		
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection(url, username, password);
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(sql);
		while (rs.next()){
		    String filename = rs.getString("filename");
		


%>
<table>
	<tr>
		<td>Id</td>
		<td>Image</td>
	</tr>
	<tr>
		<td><%=imageid%></td>
		<td><img src="/suppictures/<%=filename%>" width="200" height="200"> </td>
	</tr>
	<tr>
</table>
<%
		}
	}catch (Exception e) {
		   out.println(e);
			}
	 

%>





</body>
</html>