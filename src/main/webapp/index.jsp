<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Average Page</title>
</head>
<body bgcolor="#7FFFD4">
	
	<h1> <center>Welcome to Average Application <center></h1>
	<form action="average" method="post">
		<b style="font-size:25px;font-family:Comic Sans;"> 
		<br><center>English </center> 
		<center><input type="text" name="english" /></center>
		<br><center>Math </center>
		<center><input type="text" name="math" /></center>
		<br><center>Filipino </center>
		<center><input type="text" name="filipino" /></center>
		<br><center>Science </center>
		<center><input type="text" name="science" /></center>
		<br>
		<center><input type="submit" /></center>
	</form>
	<center><% if(request.getAttribute("average") != null) { %>
	<%= request.getAttribute("average")%>
	<%} %></center>
</body>
</html>