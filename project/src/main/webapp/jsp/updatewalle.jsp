<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.sql.Connection, java.sql.PreparedStatement, java.sql.ResultSet, java.sql.SQLException, conn.Connections" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update EV3 attributes</title> 
</head>
<body>

<style>
body {
    background-color: #3E4172;
}

h1   {
    display: inline-block;
    color: #9B7495;
    border: 5px dashed #9B7495;
    padding: 10px;
}

p    {
    color: #CFBFB8;
    font-size: 20px;
}

p1    {
    color: #CFBFB8;
}

input[type="submit"] {
            border-radius: 10px; 
            padding: 5px; 
        }
        
.button {
  	display: inline-block;
  	padding: 0.5em 1em;
  	background-color: #007bff;
  	color: #fff;
  	border-radius: 0.25em;
  	text-decoration: none;
  	font-weight: bold;
}
</style>

<h1>Update your input for Wall-E</h1>

 <form action = '/rest/project/updatewalle' method ='post' >
 
		<!-- no need for ID input because the update method from the Walle service will update the latest input by default -->
		Speed: <input type="text" name="speed"><br>
		Turn angle: <input type="text" name="turnangle"><br>
		Max obstacle count: <input type="text" name="maxobs"><br>
		
		<input type = 'submit' name = 'ok' value = 'Send'><br><br>
		<a href = '/html/ev3.html' class = "button" target = '_blank'>Back</a><br><br>

</form>  

<img src="/html/images/Pixar-Wall-E.jpg" alt="robot" style="width: 750px; height: 450px;">

</body>
</html>