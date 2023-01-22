<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<style>
        body { background-color: #99ccff; }
        p { color: #fff; }
    </style>
</head>
<body >
<br>
<a href=HomePage.jsp style="background-color:orange;color:black;text-decoration:none ;font-size:35px;font-weight:bold;">FlyAway</a>
<br><br>
<center>
<h1 style="background-color: orange;width: 400px">Insert New Flight Details</h1>

<div style="background-color:#ffff99;border:3px solid black;width:25%;border-radius:20px;padding:20px" align="center">
<form action=InsertFlight method=post>
	<label for=name>Name :-</label> <input type="text" name=name id=name /><br><br>
	<label for=from>From :-</label> <input type="text" name=from id=from /><br><br>
	<label for=to>To :-</label> <input type="text" name=to id=to /><br><br>
	<label for=departure>Departure :-</label> <input type="date" name=departure id=departure /><br><br>
	<label for=time>Time :-</label> <input type="time" name=time id=time /><br><br>
	<label for=price>Price :-</label> <input type="text" name=price id=price /><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
</center>
<%
	String message=(String)session.getAttribute("message");
	if(message!=null){
%>
<p style="color:silver;"><%=message %></p>
<%
		session.setAttribute("message", null);
	}
%>
</body>
</html>