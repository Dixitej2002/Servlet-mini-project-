<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background: #f4f6f8;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }

    .card {
        background: white;
        padding: 25px;
        width: 320px;
        border-radius: 8px;
        box-shadow: 0 0 10px rgba(0,0,0,0.1);
    }

    h2 {
        text-align: center;
        margin-bottom: 20px;
    }

    input {
        width: 100%;
        padding: 8px;
        margin: 8px 0;
    }

    button {
        width: 100%;
        padding: 10px;
        background: #007bff;
        color: white;
        border: none;
        cursor: pointer;
        border-radius: 4px;
    }

    button:hover {
        background: #0056b3;
    }

    a {
        display: block;
        text-align: center;
        margin-top: 10px;
        text-decoration: none;
    }
</style>

</head>
<body>
	<div class="card">
	
	<form action="register" method="post">
		
		<h2>Register Here</h2>
		
		Name: <input type="text" name="name" required><br>
		Email: <input type="email" name="email" required><br>
		Password: <input type="password" name="password" required><br>
		
		<button type="submit">Register</button>
		
	</form>
	<a href="login.jsp">Already have account</a>
	
	</div>
	
</body>
</html>