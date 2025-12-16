<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background: #121212;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: white;
    }

    .card {
        background: #1f1f1f;
        padding: 25px;
        width: 320px;
        border-radius: 8px;
    }

    input {
        width: 100%;
        padding: 8px;
        margin: 10px 0;
        border-radius: 4px;
        border: none;
    }

    button {
        width: 100%;
        padding: 10px;
        background: #28a745;
        color: white;
        border: none;
        cursor: pointer;
    }

    button:hover {
        background: #218838;
    }
</style>
</head>
<body>
	<div class = "card">
	<form action="login" method="post">
		<h2>Login</h2>
		
		Enter email: <input type="email" name="email" required placeholder="eg:- hello@gmail.com"> <br> <br>
		Enter Password: <input type= "password" name="password" required> <br><br>
		
		<button type="submit"> Login</button>
	
	</form>
		
		<a href="Register.jsp">Register Now</a>
	</div>
	
</body>
</html>