<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<title>Average Page</title>
<style>
	body {
			background-image: url("mathbg.gif");
			background-attachment: relative;
			background-position: center;
		}
	.jumbotron {
			font-family: 'Aclonica';font-size: 22px;
			background-image: url("new.jpg");
			background-attachment: relative;
			background-position: center;
		
	}

</style>

</head>
<body>
	
	<div class="jumbotron text-center">
  		<h1>Welcome to Average Generator</h1>
	</div>
	
	<form action="average" method="post">
		<p class="text-center">English</p>
		<center><input type="text" name="english"/><center>
		<br><center>Math </center>
		<center><input type="text" name="math" /></center>
		<br><center>Filipino </center>
		<center><input type="text" name="filipino" /></center>
		<br><center>Science </center>
		<center><input type="text" name="science" /></center>
		<br>
		<center><input type="submit" class="btn btn-primary"></center>
	</form>
	<center><% if(request.getAttribute("average") != null) { %>
	<%= request.getAttribute("average")%>
	<%} %></center>
</body>
</html>