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
}

h1 {
    color: #007bff;
    margin-top: 0px;
    text-align: center;
    margin-bottom: 10px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 0 auto;
}

th, td {
    border: 1px solid #ddd;
    padding: 8px;
    text-align: left;
}

th {
    background-color: #007bff;
    color: #fff;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #ddd;
}

a {
    text-decoration: none;
    color: #007bff;
    padding: 5px 10px;
    border-radius: 3px;
    transition: background-color 0.3s;
}

a:hover {
    background-color: #0056b3;
    color: #fff;
}

.confirm-delete {
    color: red;
}

button[type="submit"] {
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
    text-decoration: none;
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

#id1 {
	padding: 4px;
}
</style>
<meta charset="ISO-8859-1">
<title>Task List</title>
</head>
<body>
	<button type="submit" id=id1><a href="/fetch">Back</a></button>
	<h1>Task List</h1>
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Title</th>
			<th>Assignee</th>
			<th>Due Date</th>
			<th>Completed</th>
			<th>Action</th>
		</tr>
		
		<c:forEach var="task" items="${taskdata }">
			<tr>
				<td>${task.id }</td>
				<td>${task.title }</td>
				<td>${task.assignee }</td>
				<td>${task.dueDate }</td>
				<td>${task.completed ? 'yes' : 'No' }</td>
				<td>
					<a href="<c:url value='update'/>${task.id}">Edit</a>
					<%--<a href="<c:url value='/delete1/'/>${task.id}" onclick="return confirm('Are you sure you want to delete this task>')">Delete</a> --%>
					<a href="<c:url value='status'/>${task.id}">State Change</a>
				</td>				
			</tr>
		</c:forEach>
	</table><br>
	<button type="submit"><a href="<c:url value='/add'/>">Add Task</a></button>
	<%--<button type="submit"><a href="<c:url value='/view'/>">View Completed Task</a></button> --%>
</body>
</html>