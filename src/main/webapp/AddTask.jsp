<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
    padding: 20px;
}

h1 {
    color: #007bff;
    margin-left: 500px;
}

form {
    max-width: 400px;
    margin: 0 auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 5px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

input[type="text"],
input[type="date"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

button[type="submit"] {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

button[type="submit"]:hover {
    background-color: #0056b3;
}
</style>
<meta charset="ISO-8859-1">
<title>Add Task</title>
</head>
<body>
	<h1>Add Task</h1>
	<form action="add1" method="post">
		Title: <input type="text" name="title" required><br><br>
		Assignee: <input type="text" name="assignee" required><br><br> 
		Due Date: <input type="date" name="dueDate" required><br><br>
		
		<button type="submit">Submit</button>
	</form>
</body>
</html>