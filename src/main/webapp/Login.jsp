<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

form {
    width: 300px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
}

input[type="email"],
input[type="password"] {
    width: 100%;
    margin-bottom: 10px;
    padding: 5px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

button[type="submit"] {
    width: 100%;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}

button[type="submit"] a {
    text-decoration: none;
    color: #fff;
}

button[type="submit"] a:hover {
    text-decoration: none;
}
</style>
<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="login" method="get">
		<h2>User Log In:</h2>
		Email: <input type="email" name="email" required="required"><br><br>
		Password: <input type="password" name="password" required="required"><br><br>
		
		<button type="submit">Login</button><br><br>
		<button type="submit"><a href="Registration.jsp">Register</a></button><br><br>
		<button type="submit"><a href="/fetch">View User List</a></button>
	</form>
</body>
</html>