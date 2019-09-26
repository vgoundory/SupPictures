<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index</title>

</head>
<body style="background-image: linear-gradient(-90deg, #C53364, #622774);">
<%
if(session.getAttribute("username")==null){
	
	response.sendRedirect("login.jsp");
}//checks if user is logged in
else if(session.getAttribute("username") == "admin"){
	
	response.sendRedirect("admin.jsp");
}
	
	else response.sendRedirect("guest.jsp");


%>
<form action="Login" method="post" style="
    background-color: #d5d8d85c;
    padding: 2em;
    margin: 50px 450px;
    font-size: 18px;
">

Hello ${username}.  <br>

Number of users: <br>

Number of pictures: <br>

Recent pictures: <br>

<a href="pictures.jsp">More pictures</a><br>

<form action="Logout">
<input type="submit" value="Logout">

</form>
</form>


</body>
</html>