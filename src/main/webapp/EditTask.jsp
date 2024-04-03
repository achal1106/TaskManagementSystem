<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    width: calc(100% - 22px);
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
<title>Edit Task</title>
</head>
<body>
	<h1>Edit Task</h1>
	<c:set var="task" value="${taskdata}"/>
	
	<form action="edit1/${task.id}" method="post">
		<input type="hidden" name="id" value="${task.id }">
		Title: <input type="text" name="title" value="${task.title }" required><br><br>
		Assignee: <input type="text" name="assignee" value="${task.assignee }" required><br><br>
		Due Date: <input type="date" name="dueDate" value="${task.dueDate }" required><br><br>
		
		<button type="submit">Submit</button>	
	</form>
</body>
</html>