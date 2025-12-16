<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Dashboard Page</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #eef2f3;
        padding: 40px;
    }

    .box {
        background: white;
        padding: 30px;
        border-radius: 8px;
        max-width: 500px;
        margin: auto;
        text-align: center;
    }

    a {
        display: inline-block;
        margin-top: 20px;
        color: #dc3545;
        text-decoration: none;
        font-weight: bold;
    }
</style>
</head>
<body>



<%
	String user = (String)session.getAttribute("user");

	if(user == null){
		response.sendRedirect("login.jsp");
	}
	
%>

<div class="box">
<h2>Welcome Dear, <%= user %></h2>

<a href="logout"> Logout</a>

</div>

</body>
</html>