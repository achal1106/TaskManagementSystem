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
    margin-top: 8px;
    text-align: center;
    margin-bottom: 10px;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 0 auto;
    border-color: transparent;
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
</style>
<meta charset="ISO-8859-1">
<title>User Data</title>
</head>
<body>
	<h1>User List</h1>
	<table border="2">
	<tr>
	<th>Id</th>
	<th>Name</th>
	<th>Email</th>
	<th>Phone</th>
	<th>Password</th>
	<th>Delete</th>
	<th>Edit</th>
	</tr>
	
	<c:forEach var="usr" items="${user}">
	<tr>
	<td>${usr.id }</td>
	<td>${usr.name }</td>
	<td>${usr.email }</td>
	<td>${usr.phone }</td>
	<td>${usr.password }</td>
	<td><a href="<c:url value='/delete/${usr.id }'/>">Delete</a></td>
	<td><a href="<c:url value='/${usr.id }'/>">Edit</a></td>
	</tr>
	</c:forEach>
	</table><br>
	<button type="submit"><a href="/fetch1">View Task</a></button>
</body>
</html>