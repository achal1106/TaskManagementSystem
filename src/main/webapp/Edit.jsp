<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit User Info</title>
</head>
<body>
	<c:set var="ob" value="${userdata}"/>
	
	<form action="/edit/${ob.id}" method="post">
		<h2>Update User Info:</h2>
		Name: <input type="text" name="name" value="${ob.name }"><br>
		Email: <input type="email" name="email" value="${ob.email }"><br>
		Phone No.: <input type="text" name="phone" value="${ob.phone }"><br>
		Password: <input type="password" name="password" value="${ob.password }"><br>
	
		<button type="submit">Edit Data</button>
	</form>
</body>
</html>