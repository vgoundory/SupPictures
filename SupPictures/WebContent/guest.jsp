<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.supinfo.dao.searchDAO" %>
<%@ page import="com.supinfo.beans.Picture" %>
<%@ page import="java.util.List"%>
<!DOCTYPE html>

<html>
<head>
<%
%>

<title>Guest</title>
</head>
<body style="background-image: linear-gradient(-90deg, #C53364, #622774);">



<form action="FileUploadServlet" method="post" enctype="multipart/form-data" style="
    background-color: #d5d8d85c;
    padding: 2em;
    margin: 50px 300px;
    font-size: 18px;">
    
<a href="pictures.jsp">Display</a><br>
<a href="pictureManagemnt.jsp">Picture Management</a><br>
<a href="search.jsp">Search</a>

</form>





        <form action="search" method="get" style="
    background-color: #d5d8d85c;
    padding: 2em;
    margin: 50px 300px;
    font-size: 18px;">
            <input name="searchterm" type="search" placeholder="Search" aria-label="Search">
            <button type="submit">Search</button>
        </form>


<form action="Logout">
<input type="submit" value="Logout">

</form>
<table>
<tr>
<td>Our most recent uploads:</td>
</tr>
<%


searchDAO dao = new searchDAO();
List<Picture> pix = dao.searchPictures("");
for (Picture photo : pix
     ) {

%>
	  <tr>
      
     <td><img src='/SupPictures/<%=photo.getName()%>' width='200'></td>
      <td style="backgroud-color='white';""><h4><%=photo.getDescription()%></h4></td>
      </tr>
<%	
}

%>


</table>



</body>
</html>