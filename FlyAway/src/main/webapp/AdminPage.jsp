<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Page</title>
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
<h2 style="background-color: orange;width:160px">Admin Login</h2>
<div style="background-color:#ffff99;border:3px solid black;width:25%;border-radius:20px;padding:20px" align="center">
<form action=AdminLogin method=post>
	<label for=email>Email :-</label> <input type="email" name=email id=email /><br><br>
	<label for=pass>Password :-</label> <input type="password" name=password id=pass /><br><br>
	<input type=submit value=submit /> <input type=reset />
</form>
</div>
</center><br>
<a href=ForgotPassword.jsp style="font-size:25;color:red;">Forgot Password</a>

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