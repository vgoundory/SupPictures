<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

</head>
<body style="background-image: linear-gradient(-90deg, #7117EA, #EA6060);">
<form action="Login" method="post" style="
    background-color: #d5d8d85c;
    padding: 2em;
    margin: 50px 450px;
    font-size: 18px;
">
<br><br>

Username:<br> <input type="text" name="uname"><br>

Password:<br> <input type="password" name="pass"><br>

<input type="submit" value="login"><br>
<a href="index.jsp">Login as guest</a><br>
<a href="registration.jsp">Register</a><br>
</form>



</body>
</html>