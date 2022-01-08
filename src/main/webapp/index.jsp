<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Curso JSP</title>
</head>
<body>
	<h1>Hello JSP</h1>
	
	<form action="ServletLogin" method="POST">
		<input name="nome" />
		<input name="idade" />
		<button type="submit">Enviar</button>
	</form>
</body>
</html>