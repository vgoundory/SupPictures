<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="FileUploadServlet" method="post" enctype="multipart/form-data" style="
    background-color: #d5d8d85c;
    padding: 2em;
    margin: 50px 300px;
    font-size: 18px;
" >
        <table width ="400px" align="center" border="2">
            <tr>
                <td align="center" colspan="2">Form Details</td>
            </tr>
            <tr>
                <td>First Name</td>
                <td><input type="text" name="firstname"/> </td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type="text" name="lastname"/> </td>
            </tr>
            <tr>
                <td>Image Link</td>
                <td><input type="file" name="file"/> </td>
            </tr>
            <tr>
                <td>Details</td>
                <td><input type="text" name="details"/> </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" name="Submit"/> </td>
            </tr>


        </table>

    </form>

<form action="Logout">
<input type="submit" value="Logout">

</form>

</body>
</html>