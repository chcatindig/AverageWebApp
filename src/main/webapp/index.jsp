<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Luckiest Guy' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Marvel' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Bungee' rel='stylesheet'>

<title>Average Page</title>
<style>
	body {
			background-image: url("mathbg.gif");
			background-attachment: fixed;
			background-position: center;
		}
	.jumbotron {
			font-family: 'Aclonica';font-size: 22px;
			background-image: url("new.jpg");
			background-attachment: relative;
			background-position: center;		
		}
	form {
		font-family: 'Luckiest Guy';font-size: 26px;	
		}
	.text {
		font-family: 'Luckiest Guy';font-size: 26px;
		}
	#corners {
		 border-radius: 25px;
		 text-align: center;
		}
	.buttonsubmit {
		font-family: 'Aclonica';font-size: 32px;
		}
	.answer {
		font-family: 'Bungee';font-size: 50px;
		}
	.footer {
		font-family: 'Marvel';font-size: 22px;
		}
	.btn {
		font-family: 'Luckiest Guy';font-size: 26px;
		background-color: #4682B4;
		color: black;
	}
</style>

</head>
<body>
	<div class="jumbotron text-center">
  		<h1>Welcome to Average Generator</h1>
  		<p>A site where you can compute for your grade average!</p>
	</div>
	
	<form action="average" method="post">
		<p class="text-center">English</p>
		<center><input type="text" name="english" id="corners"/><center>
		<br><center>Math </center>
		<center><input type="text" name="math" id="corners"/></center>
		<br><center>Filipino </center>
		<center><input type="text" name="filipino" id="corners"/></center>
		<br><center>Science </center>
		<center><input type="text" name="science" id="corners"/></center>
		<br>
		<center><input name="buttonsubmit" type="submit" class="btn btn-primary"></center>
	</form>
	<br>
	<div class="answer">
	<center><% if(request.getAttribute("average") != null) { %>
	<%= request.getAttribute("average")%>
	<%} %></center>
	</div>
	<br>
		<center><div class="footer">Copyright 2017. 4R1C. All Right Reserved.</div></center>
</body>
</html>