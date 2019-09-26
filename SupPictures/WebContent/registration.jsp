<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body style="background-image: linear-gradient(-90deg, #7117EA, #EA6060);">
<form action="Registration" method="post" style="
    background-color: #d5d8d85c;
    padding: 2em;
    margin: 50px 520px;
    font-size: 18px;
">

Username:<br> <input type="text" name="uname" required="required"><br>

Password:<br> <input type="password" name="pass" required="required"><br>

<input type="submit" value="Registration">
</form>

<a href="index.jsp">Login as guest</a>

</body>
</html>